import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        WaveWidget(
          config: CustomConfig(
            colors: [Theme.of(context).scaffoldBackgroundColor],
            durations: [1],
            heightPercentages: [0.83],
          ),
          backgroundColor: Theme.of(context).primaryColor,
          size: const Size(double.infinity, 400),
          waveAmplitude: 20,
        ),
      ]),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
