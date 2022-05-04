import 'dart:async';

import 'package:flutter/material.dart';

class TimerUi extends StatefulWidget {
  const TimerUi({Key? key}) : super(key: key);

  @override
  State<TimerUi> createState() => _TimerUiState();
}

class _TimerUiState extends State<TimerUi> with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Timer? timer;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: Duration(seconds: 15), vsync: this);
    controller!.repeat();
    timer = Timer.periodic(Duration(seconds: 15), (t) async {
      await Future.delayed(const Duration(seconds: 2));
    });
  }

  @override
  void dispose() {
    controller!.dispose();
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 1, end: 0),
            duration: Duration(seconds: 15),
            builder: (context, double value, _) {
              return LinearProgressIndicator(
                minHeight: 7,
                value: value,
                backgroundColor: Colors.black,
                valueColor: controller!
                    .drive(ColorTween(begin: Colors.white, end: Colors.red)),
              );
            }),
      ),
    );
  }
}
