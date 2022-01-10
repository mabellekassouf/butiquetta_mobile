import 'dart:async';

import 'package:butiquetta_mobile/view/Authentication/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimeout() {
    return  Timer(Duration(seconds: 4), changeScreen);
  }
//
  changeScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context){
          return LoginScreen();
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    startTimeout();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(),
    );
  }

}
