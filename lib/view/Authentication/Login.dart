import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Authentication/SignUp.dart';
import 'package:butiquetta_mobile/view/HomeView.dart';
import 'package:butiquetta_mobile/view/home_view_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ForgetPassword.dart';
class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailFieldController = TextEditingController();
  final TextEditingController passwordFieldController = TextEditingController();
  @override
  void dispose() {
    emailFieldController.dispose();
    passwordFieldController.dispose();
    super.dispose();
  }
bool remember=false;
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor:  Color(0xffEFD8CB),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Container(
            width: width,
            height: height,
            child: Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height*0.86,
                          width: width*0.97,
                          decoration: BoxDecoration(
                              color: Color(0xffEFD8CB),
                              borderRadius: BorderRadius.only(bottomRight:Radius.circular(40) )
                          ),),
                        Row(
                          children: [
                            Container(
                                width: width*0.8,
                                height: height*0.1,
                                color: Color(0xff557374)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height,
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: height*0.88,
                          width: width*0.97,
                          decoration: BoxDecoration(
                              color: Color(0xff557374),
                              borderRadius: BorderRadius.only(bottomRight:Radius.circular(40) )
                          ),),
                        Padding(
                          padding: EdgeInsets.only(left: width*0.1,right: width*0.04),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height:height*0.07,
                                child: TextButton(
                                    onPressed: (){
                                      changeScreen(context, ForgetScreen());
                                    },
                                    child: Text(
                                      "Forgot Password?",
                                      style: TextStyle(
                                          color: Color(0xff9FACBD),
                                          fontSize: 11,
                                          fontFamily: 'Geomanist'
                                      ),)),
                              ),
                              Container(
                                height: height*0.07,
                                width: width*0.3,
                                child: ElevatedButton(
                                  onPressed: (){
                                    changeScreen(context, SignUpScreen());
                                  },
                                  child: Text("SIGN UP",
                                    style: TextStyle(
                                      fontFamily: 'Geomanist',
                                      fontSize: 16,
                                      color: Color(0xff557374),
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: Color(0xffEFD8CB),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: width*0.03),
                          child: Container(
                            height: height*0.05,
                            width: width*0.97,
                            decoration: BoxDecoration(
                                color: Color(0xff557374),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(40))
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: width,
                    height: height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: height,
                          width: width*0.03,
                          color:  Color(0xffEFD8CB),
                        )
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Container(height: height*0.06,),
                      SvgPicture.asset('assets/icons/main_logo.svg',),
                      Container(height: height*0.02,),
                      Text("COMPANY NAME",style: TextStyle(color: Colors.white,fontFamily: 'Laomn',fontSize: 26),
                      ),
                      Container(height: height*0.05,),
                      Container(
                        width: width*0.75,
                        height: height*0.45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            Container(height: height*0.02,),
                            Container(
                              height: height*0.1,
                                child: SvgPicture.asset('assets/icons/icon_profile.svg',
                                )
                            ),
                            Container(height: height*0.02),
                            Container(
                              width: width*0.6,
                              height: height*0.07,
                              child: TextFormField(
                                //   key: ,
                                controller: emailFieldController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                    fontFamily: 'Geomanist',
                                    fontSize: 14,
                                    color: Color(0xff9FACBD),
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsetsDirectional.only(start: 5, end: 20,),
                                    child: SvgPicture.asset(
                                      'assets/icons/icon_email.svg',
                                      color: Color(0xff9FACBD),
                                    ),
                                  ),
                                  errorStyle: TextStyle(
                                    color: Colors.transparent,
                                    fontSize: 0,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffE6E6E6),
                                      width: 1.0,
                                    ),
                                  ),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffE6E6E6),
                                      )
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),

                                validator: (String? value){
                                  if(value=="" || value == null|| !value.contains("@"))
                                  {
                                    return 'Please Enter email';
                                  }

                                  return null;
                                },
                              ),
                            ),
                            Container(
                              width: width*0.6,
                              height: height*0.07,
                              child: TextFormField(
                                //   key: ,
                                 controller:passwordFieldController ,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    fontFamily: 'Geomanist',
                                    fontSize: 14,
                                    color: Color(0xff9FACBD),
                                  ),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsetsDirectional.only(start: 5, end: 20,top: 10,bottom: 10),
                                    child: Image.asset(
                                      'assets/icons/icon_password.png',
                                      color: Color(0xff9FACBD),
                                      height: 7,
                                      width: 10,
                                    ),
                                  ),
                                  suffixIcon: new IconButton(
                                    iconSize: 20,
                                    onPressed: _toggle,
                                    icon: (new Icon(_obscureText ? Icons.visibility_off_sharp : Icons.visibility_sharp,
                                        color: Color(0xffE6E6E6))),

                                  ),
                                  errorStyle: TextStyle(
                                    color: Colors.transparent,
                                    fontSize: 0,
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffE6E6E6),
                                      width: 1.0,
                                    ),
                                  ),
                                  border: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xffE6E6E6),
                                      )
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),

                                validator: (String? value){
                                  if(value=="" || value == null)
                                  {
                                    return 'Please Enter Password';
                                  }

                                  return null;
                                },
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: width*0.07),
                              child: Row(
                                children: [
                                  Checkbox(
                                    onChanged: (bool? v){
                                      setState(() {
                                        remember=v!;
                                      });
                                    },
                                    value: remember,
                                    activeColor: Color(0xffF5F6F7),
                                    fillColor: MaterialStateProperty.all<Color>(Color(0xffF5F6F7)),
                                    focusColor: Color(0xffF5F6F7),
                                    checkColor: Colors.white,
                                  ),
                                  Text("Remember me",
                                    style: TextStyle(
                                      fontFamily: 'Geomanist',
                                      fontSize: 11,
                                      color: Color(0xff9FACBD),
                                    ),)
                                ],
                              ),
                            ),
                            Spacer(),
                            Container(
                              width: width*0.6,
                              child: ElevatedButton(
                                onPressed: (){
                                  //signInButtonCallback();
                                  changeScreen(context, HomeView());
                                },
                                child: Text("LOG IN",
                                  style: TextStyle(
                                    fontFamily: 'Geomanist',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  elevation: 10,
                                  primary: Color(0xff557374),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }

  // Future<void> signInButtonCallback() async {
  //   if (_formkey.currentState.validate()) {
  //     _formkey.currentState.save();
  //     final AuthentificationService authService = AuthentificationService();
  //     String signInStatus = "false";
  //     String snackbarMessage;
  //     try {
  //       final signInFuture = authService.signIn(
  //         email: emailFieldController.text.trim(),
  //         password: passwordFieldController.text.trim(),
  //       );
  //       signInFuture.then((value) => signInStatus = value);
  //       signInStatus = await showDialog(
  //         context: context,
  //         builder: (context) {
  //           return FutureProgressDialog(
  //             signInFuture,
  //             message: Text("Signing in to account"),
  //           );
  //         },
  //       );
  //       if (signInStatus == "true") {
  //         snackbarMessage = "Signed In Successfully";
  //         if(remember){
  //           SharedPreferences _pref=await SharedPreferences.getInstance();
  //           _pref.setBool("logged", true);
  //         }
  //         changescreenuntill(context, HomeView());
  //       } else {
  //         snackbarMessage=signInStatus;
  //       }
  //     } on MessagedFirebaseAuthException catch (e) {
  //       snackbarMessage = e.message;
  //     } catch (e) {
  //       snackbarMessage = e.toString();
  //     } finally {
  //       Logger().i(snackbarMessage);
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //           content: Text(snackbarMessage),
  //         ),
  //       );
  //     }
  //   }
  // }
}
