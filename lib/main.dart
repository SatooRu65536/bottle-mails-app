import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './view/map.dart';
import './view/home.dart';
import 'view/history.dart';
import './view/setting.dart';

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
        home: const TopView());
  }
}

class TopView extends StatefulWidget {
  const TopView({super.key});

  @override
  State<StatefulWidget> createState() => _TopViewState();
}

class _TopViewState extends State<TopView> {
  int _currentIndex = 0;
  final _pageWidgets = [
    const MapView(),
    const HomeView(),
    const HistoryView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _pageWidgets[_currentIndex]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() {
          _currentIndex = index;
        }),
        destinations: const [
          NavigationDestination(
            // selectedIcon: Icon(Icons.mail),
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.mail),
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.mail),
            icon: Icon(Icons.mail),
            label: 'history',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.mail),
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
