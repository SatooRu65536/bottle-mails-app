import 'package:bottle_mails/view/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import './view/map.dart';
import './view/home.dart';
import './view/history.dart';
import './view/setting.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });

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
            scaffoldBackgroundColor: const Color(0xfff5f5f5),
            textTheme:
                GoogleFonts.murechoTextTheme(Theme.of(context).textTheme),
            appBarTheme:
                AppBarTheme(backgroundColor: Theme.of(context).primaryColor),
            colorScheme: ColorScheme.fromSwatch().copyWith(
                secondary: const Color(0xffff9398),
                surface: const Color(0xffaaaaaa))),
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
    const PostView(),
    const HistoryView(),
    const SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets[_currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          _currentIndex = 0;
        }),
        backgroundColor: Theme.of(context).primaryColor,
        child:
            Icon(Icons.map, color: Theme.of(context).scaffoldBackgroundColor),
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
                icon: Icon(
                  Icons.home_filled,
                  color: Theme.of(context).colorScheme.surface,
                ),
                onPressed: () => setState(() {
                  _currentIndex = 1;
                }),
              ),
              const Spacer(flex: 2),
              IconButton(
                icon: Icon(
                  Icons.add_box,
                  color: Theme.of(context).colorScheme.surface,
                ),
                onPressed: () => setState(() {
                  _currentIndex = 2;
                }),
              ),
              const SizedBox(width: 100),
              IconButton(
                icon: Icon(
                  Icons.mail,
                  color: Theme.of(context).colorScheme.surface,
                ),
                onPressed: () => setState(() {
                  _currentIndex = 3;
                }),
              ),
              const Spacer(flex: 2),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Theme.of(context).colorScheme.surface,
                ),
                onPressed: () => setState(() {
                  _currentIndex = 4;
                }),
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
