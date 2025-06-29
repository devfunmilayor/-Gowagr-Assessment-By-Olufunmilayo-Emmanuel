// lib/main.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gowagr_assessment/core/app_theme.dart';
import 'package:gowagr_assessment/di/injector.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_bloc.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_event.dart';
import 'package:gowagr_assessment/features/events/presentation/views/hone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PublicEventBloc>(
            create: (context) => sl<PublicEventBloc>()
              ..add(const PublicEventsEvent.loadEvents(
                  initialLoad: true, category: 'Trending')))
      ],
      child: MaterialApp(
        title: 'Gowagr Assessment',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: const HomePage(),
      ),
    );
  }
}
