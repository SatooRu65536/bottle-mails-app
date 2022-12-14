import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
        elevation: 0,
      ),
      body: const Center(child: Text('Post', style: TextStyle(fontSize: 32.0))),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }
}
