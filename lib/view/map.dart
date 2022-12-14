import 'package:flutter/material.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text('Map', style: TextStyle(fontSize: 32.0))),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
