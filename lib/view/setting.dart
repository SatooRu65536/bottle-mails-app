import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Setting', style: TextStyle(fontSize: 32.0))),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
