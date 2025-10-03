import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../core/models/app_events.dart';
import '../../../core/services/app_event_bus.dart';

class AppEventListener extends StatefulWidget {
  final Widget child;
  final bool Function(AppEvent)? shouldProcessEvent;

  const AppEventListener({
    super.key,
    required this.child,
    this.shouldProcessEvent,
  });

  @override
  State<AppEventListener> createState() => _AppEventListenerState();
}

class _AppEventListenerState extends State<AppEventListener> {
  final Set<AppEvent> _processedEvents = {};
  StreamSubscription<AppEvent>? _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = AppEventBus().stream.listen(_handleEvent);
  }

  void _handleEvent(AppEvent event) async {
    if (_processedEvents.contains(event)) return;

    if (widget.shouldProcessEvent?.call(event) ?? true) {
      _processedEvents.add(event);

      SchedulerBinding.instance.addPostFrameCallback((_) async {
        if (!mounted) return;

        try {
          await event.call(context);
          // Notify that the event is complete
          await AppEventBus().completeEvent();
        } catch (error, stackTrace) {
          debugPrint('Error processing event: $error\n$stackTrace');
          // Even if there's an error, we should complete the event
          await AppEventBus().completeEvent();
        }
      });
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    _processedEvents.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
