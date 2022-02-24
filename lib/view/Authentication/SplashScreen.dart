import 'dart:async';
import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimeout() async{
    return  Timer(Duration(seconds: 3), changeScreen);
  }
//

  changeScreen() async {
    SharedPreferences _pref=await SharedPreferences.getInstance();
    bool? logged=_pref.getBool("logged");
    if(logged==null){
      logged = false;
    }
    if(!logged) {
      changeScreenReplacement(context, LoginScreen());
    }else{
      changeScreenReplacement(context,HomeView());
    }
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    startTimeout();
  }


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: width,
        height: height,
        // child: Image.asset(
        //   'assets/images/SplashScreen.png',
        //   width: width,
        //   height: height,
        //   fit: BoxFit.fill,
        // ),
        child: Center(child: Text("Splash Screen")),
      ),
    );
  }

}
