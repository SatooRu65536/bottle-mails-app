import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).primaryColor,
          notchMargin: 6.0,
          shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(),
            StadiumBorder(
              side: BorderSide(),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Spacer(flex: 2),
                IconButton(
                  icon: const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const Spacer(flex: 2),
                IconButton(
                  icon: const Icon(
                    Icons.add_box,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(width: 100),
                IconButton(
                  icon: const Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const Spacer(flex: 2),
                IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                const Spacer(flex: 2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
