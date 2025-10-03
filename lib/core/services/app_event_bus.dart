import 'dart:async';
import 'dart:collection';

import '../models/app_events.dart';

class AppEventBus {
  static final AppEventBus _instance = AppEventBus._();

  factory AppEventBus() => _instance;

  AppEventBus._();

  final _controller = StreamController<AppEvent>.broadcast();
  final Queue<AppEvent> _eventQueue = Queue();
  bool _isProcessing = false;
  Completer? _completer =
      Completer<void>(); // Track completion of current event

  Stream<AppEvent> get stream => _controller.stream;

  Stream<T> on<T extends AppEvent>() =>
      _controller.stream.where((e) => e is T).cast<T>();

  /// Adds an event to the queue to be processed in order
  void addToQueue(AppEvent event) {
    _eventQueue.add(event);
    _processQueue();
  }

  /// Adds an event that will be processed immediately, bypassing the queue
  void addImmediate(AppEvent event) {
    _controller.add(event);
  }

  /// Deprecated: Use [addToQueue] or [addImmediate] instead
  @Deprecated(
    'Use addToQueue() for queued events or addImmediate() for immediate events',
  )
  void add(AppEvent event) => addToQueue(event);

  // Future<void> processEvent(AppEvent event, BuildContext context) async {
  //   _isProcessing = true;
  //   try {
  //     await event.call(context);
  //   } finally {
  //     _isProcessing = false;
  //     _processQueue();
  //   }
  // }

  void _processQueue() async {
    // If already processing or queue is empty, do nothing
    if (_isProcessing || _eventQueue.isEmpty) return;

    _isProcessing = true;
    final event = _eventQueue.removeFirst();

    try {
      // Create a new completer for this event
      final completer = Completer<void>();
      _completer?.complete(); // Complete any previous completer
      _completer = completer;

      // Process the event
      _controller.add(event);

      // Wait for the event to complete
      await _completer?.future;
    } finally {
      _isProcessing = false;
      // Process next event in queue
      if (_eventQueue.isNotEmpty) {
        _processQueue();
      }
    }
  }

  // Call this when an event is fully processed
  Future<void> completeEvent() async {
    _completer?.complete();
    _completer = null;
  }

  void _onControllerClosed() {
    _eventQueue.clear();
    _isProcessing = false;
  }

  void dispose() {
    _controller.close();
    _onControllerClosed();
  }
}

/*

// In app_event_bus.dart
class AppEventBus {
  // ... existing code ...

  final Queue<AppEvent> _eventQueue = Queue();
  bool _isProcessing = false;
  final _completer = Completer<void>(); // Track completion of current event

  // ... existing methods ...

  void _processQueue() async {
    // If already processing or queue is empty, do nothing
    if (_isProcessing || _eventQueue.isEmpty) return;

    _isProcessing = true;
    final event = _eventQueue.removeFirst();

    try {
      // Create a new completer for this event
      final completer = Completer<void>();
      _completer?.complete(); // Complete any previous completer
      _completer = completer;

      // Process the event
      _controller.add(event);

      // Wait for the event to complete
      await _completer.future;
    } finally {
      _isProcessing = false;
      // Process next event in queue
      if (_eventQueue.isNotEmpty) {
        _processQueue();
      }
    }
  }

  // Call this when an event is fully processed
  Future<void> completeEvent() async {
    _completer?.complete();
    _completer = null;
  }

  // ... rest of the class ...
}

*
* */
