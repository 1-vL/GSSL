import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:GSSL/pages/login_page.dart';
import 'dart:async';

import './main_page.dart';

/***
 * Container(
    width: double.infinity,
    height: double.infinity,
    child:Image.asset('assets/images/loading.png'),
    );
 */


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final assetAudioPlayer = AssetsAudioPlayer();

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
          () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
          ),
    );
    assetAudioPlayer.open(Audio("assets/sounds/DogBark.wav"));
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/loading.gif'), fit: BoxFit.contain),
      ),
    );
  }
}