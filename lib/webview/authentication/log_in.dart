import 'package:butiquetta_mobile/webview/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class WebLogIn extends StatefulWidget {
  const WebLogIn({Key? key}) : super(key: key);

  @override
  _WebLogInState createState() => _WebLogInState();
}

class _WebLogInState extends State<WebLogIn> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController fullNameFieldController = TextEditingController();
  final TextEditingController emailFieldController = TextEditingController();
  final TextEditingController passwordFieldController =TextEditingController();


  @override
  void dispose() {
    fullNameFieldController.dispose();
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
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            child: Image.asset(
              'assets/images/image_businessman.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: width,
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigationBarWeb(),
                Container(height: height*0.06,),
                Container(
                  height: height*0.797,
                  width: width*0.45,
                  padding: EdgeInsets.only(left: width*0.03),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Form(
                    key: _formKey,
                    child: Container(
                      width: width*0.5,
                      height: height*0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Color(0xffEFD8CB),
                      ),
                      child: Stack(
                          children: [
                            Container(
                              height: height*0.797,
                              width: width*0.45,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left:width*0.03),
                                    child: Container(
                                      height: height*0.65,
                                      width: width*0.40,
                                      decoration: BoxDecoration(
                                          color:  Color(0xff557374),
                                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(40),topRight: Radius.circular(20) )
                                      ),),
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left:width*0.06 ),
                                        child: Container(
                                            width: width*0.36,
                                            height: height*0.075,
                                            color: Color(0xff557374)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: height*0.797,
                              width: width*0.45,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left:width*0.03),
                                    child: Container(
                                      height: height*0.65,
                                      width: width*0.40,
                                      decoration: BoxDecoration(
                                          color:  Color(0xff557374),
                                          borderRadius: BorderRadius.only(bottomLeft:Radius.circular(40),topRight: Radius.circular(20) )
                                      ),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: width*0.02,left: width*0.01),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: height*0.074,
                                          width: width*0.1,
                                          child: ElevatedButton(
                                            onPressed: (){
                                              Navigator.pop(context);
                                            },
                                            child: Text("SIGN UP",
                                              style: TextStyle(
                                                fontFamily: 'Geomanist',
                                                fontSize: 16,
                                                color:Color(0xff557374),
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
                                    padding: EdgeInsets.only(left: width*0.03),
                                    child: Container(
                                      height: height*0.073,
                                      width: width*0.40,
                                      decoration: BoxDecoration(
                                          color:   Color(0xff557374),
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),bottomRight:  Radius.circular(20))
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: width,
                              height: height*0.797,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: height*0.797,
                                    width: width*0.03,
                                    decoration: BoxDecoration(
                                        color: Color(0xffEFD8CB),
                                        borderRadius: BorderRadius.only(topLeft:Radius.circular(20),bottomLeft: Radius.circular(20) )
                                    ),

                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(height: height*0.04,),
                                Container(
                                    height: height*0.04,
                                    child: SvgPicture.asset('assets/icons/main_logo.svg')),
                                Text("COMPANY NAME",style: TextStyle(color: Colors.white,fontFamily: 'Laomn',fontSize: 26),
                                ),
                                Container(height: height*0.03,),
                                Container(
                                  width: width*0.30,
                                  height: height*0.4,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: width*0.04),
                                  child: Column(
                                    children: [
                                      Container(height: height*0.02,),
                                      Container(
                                          height: height*0.07,
                                          child: SvgPicture.asset('assets/icons/icon_profile.svg')),
                                      Container(height: height*0.02),
                                      Container(
                                        width: width*0.6,
                                        height: height*0.055,
                                        child: TextFormField(
                                          //   key: ,
                                          controller: emailFieldController,
                                          keyboardType: TextInputType.emailAddress,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                                            if(value=="" || value == null)
                                            {
                                              return 'Please Enter Email';
                                            }

                                            return null;
                                          },
                                        ),
                                      ),
                                      Container(
                                        width: width*0.6,
                                        height: height*0.055,
                                        child: TextFormField(
                                          //   key: ,
                                          controller: passwordFieldController,
                                          autovalidateMode: AutovalidateMode.onUserInteraction,
                                          obscureText: _obscureText,
                                          decoration: InputDecoration(
                                            hintText: "Password",
                                            hintStyle: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 14,
                                              color: Color(0xff9FACBD),
                                            ),
                                            prefixIcon: Padding(
                                              padding: const EdgeInsetsDirectional.only(start: 2, end: 15,top: 5,bottom: 5),
                                              child: Image.asset(
                                                'assets/icons/icon_password.png',
                                                color: Color(0xff9FACBD),
                                                height: 10,
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
                                        padding: EdgeInsets.symmetric(horizontal: width*0.01),
                                        child: Row(
                                          children: [
                                            Checkbox(
                                              onChanged: (bool? re){
                                                setState(() {
                                                      remember=re!;
                                                });
                                              },
                                              value: true,
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
                                        width: width*0.2,
                                        child: ElevatedButton(
                                          onPressed: (){
                                            // signUpButtonCallback();
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

              ],
            ),
          ),
        ],
      ),
    );
  }
}
