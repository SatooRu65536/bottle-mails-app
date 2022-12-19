import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const userName = '佐藤 さとる';
  static const iconLink = 'assets/images/icons/sample.png';
  static const selfIntroduction =
      'あいうえお\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nあ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            _buildWaveContainer(context),
            _buildProfile(context),
            _buildBottle(context)
          ],
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
        heightPercentages: [0.78],
      ),
      backgroundColor: Theme.of(context).primaryColor,
      size: const Size(double.infinity, 380),
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
              height: 100,
              width: 250,
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(
                  top: 20, left: MediaQuery.of(context).size.width * 0.1),
              child: const SingleChildScrollView(
                child: Text(selfIntroduction),
              ),
            ),
          ],
        ));
  }

  Widget _buildBottle(context) {
    return Positioned(
        bottom: 0,
        right: MediaQuery.of(context).size.width * 0.2,
        child: SvgPicture.asset(
          'assets/images/bottle.svg',
          color: Theme.of(context).scaffoldBackgroundColor,
          height: 100,
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
