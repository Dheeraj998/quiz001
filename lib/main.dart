import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'package:quiz001/controller/countdown/countdown_cubit.dart';
import 'package:quiz001/controller/data/data.dart';
import 'package:quiz001/controller/datacubit/cubit/data_cubit_cubit.dart';
import 'package:quiz001/controller/pagechange/cubit/pagechange_cubit.dart';
import 'package:quiz001/screens/countDownScreen.dart';
import 'package:quiz001/screens/quizscreen.dart';
import 'package:quiz001/screens/resultscreen.dart';
import 'package:quiz001/screens/timerui.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    readJson();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CountdownCubit(),
        ),
        BlocProvider(
          create: (context) => PagechangeCubit(),
        ),
        BlocProvider(
          create: (context) => DataCubitCubit(),
        ),
      ],
      child: const MaterialApp(
          title: 'Quiz app',
          debugShowCheckedModeBanner: false,
          home: TestScreen() //SplashSreen(),
          ),
    );
  }
}

class SplashSreen extends StatelessWidget {
  const SplashSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
          duration: 3000,
          splash: Icons.quiz,
          nextScreen: const CountDownScreeen(),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.fade,
          backgroundColor: Colors.blue),
    );
  }
}
