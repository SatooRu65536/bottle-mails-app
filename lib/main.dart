import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: const Color(0xff64b5f6),
          primaryColorLight: const Color(0xff9be7ff),
          primaryColorDark: const Color(0xff2286c3),
          bottomAppBarColor: const Color(0xfff5f5f5),
          textTheme: GoogleFonts.murechoTextTheme(Theme.of(context).textTheme),
        ),
        home: const HomeView());
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.map, color: Color(0xfff5f5f5)),
      ),
      bottomNavigationBar: BottomAppBar(
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
                  color: Color(0xffaaaaaa),
                ),
                onPressed: () {},
              ),
              const Spacer(flex: 2),
              IconButton(
                icon: const Icon(
                  Icons.add_box,
                  color: Color(0xffaaaaaa),
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 100),
              IconButton(
                icon: const Icon(
                  Icons.mail,
                  color: Color(0xffaaaaaa),
                ),
                onPressed: () {},
              ),
              const Spacer(flex: 2),
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Color(0xffaaaaaa),
                ),
                onPressed: () {},
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
