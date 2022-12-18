import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const userName = '佐藤 さとる';
  static const iconLink = 'assets/images/icons/sample.png';
  static const selfIntroduction =
      'おはよう。\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nあ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [_buildWaveContainer(context), _buildProfile(context)],
        )
      ]),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    );
  }

  Widget _buildWaveContainer(context) {
    return WaveWidget(
      config: CustomConfig(
        colors: [Theme.of(context).scaffoldBackgroundColor],
        durations: [1],
        heightPercentages: [0.83],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      size: const Size(double.infinity, 400),
      waveAmplitude: 20,
    );
  }

  Widget _buildProfile(context) {
    return Positioned(
        top: 80,
        left: MediaQuery.of(context).size.width * 0.1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileView(),
                    ));
              },
              child: Row(
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill, image: AssetImage(iconLink))),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: const Text(
                      userName,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: const Color(0xffffffff),
              height: 100,
              width: 250,
              margin: EdgeInsets.only(
                  top: 20, left: MediaQuery.of(context).size.width * 0.1),
              child: const SingleChildScrollView(
                child: Text(selfIntroduction),
              ),
            ),
          ],
        ));
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('プロフィール変更')),
      body: const Placeholder(),
    );
  }
}
