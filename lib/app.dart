import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/themes/app_theme.dart';
import 'core/di/injector.dart';
import 'features/home/logic/home_bloc.dart';
import 'features/main/ui/main_wrapper.dart';
import 'features/shared/widgets/app_event_listener.dart';

class HarisApp extends StatelessWidget {
  const HarisApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) => sl<HomeBloc>()..add(Initialize()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Haris',
        theme: LightTheme().themeData(),
        darkTheme: DarkTheme().themeData(),
        home: const AppEventListener(child: MainWrapper()),
        themeMode: ThemeMode.light,
      ),
    );
  }
}
