import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDetailsView extends StatefulWidget {
  const MyDetailsView({Key? key}) : super(key: key);

  @override
  _MyDetailsViewState createState() => _MyDetailsViewState();
}

class _MyDetailsViewState extends State<MyDetailsView> {
  final TextEditingController fullNameFieldController = TextEditingController();
  final TextEditingController EmailFieldController = TextEditingController();
  final TextEditingController PasswordFieldController = TextEditingController();
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
        backgroundColor: Color(0xffF5F6F7),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(62.0),
          child: AppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              "My Details",
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Valencia', fontSize: 25),
            ),
            leading: IconButton(
              icon: Image.asset(
                'assets/icons/icon_back.png',
                color: Color.fromRGBO(86, 115, 116, 1),
                height: 25,
                width: 25,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white,
                width: width,
                height: height * 0.4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0,top: 20.0),
                      child: Container(
                        width: width*0.8,
                        height: height*0.07,
                        child: TextFormField(
                          controller: fullNameFieldController,
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            hintText: "Full Name",
                            hintStyle: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14,
                              color: Color(0xff9FACBD),
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
                              return 'Please Enter full name';
                            }

                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                          width: width * 0.8,
                          height: height * 0.08,
                          child: TextFormField(
                            controller: EmailFieldController,
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: TextStyle(
                                fontFamily: 'Geomanist',
                                fontSize: 14,
                                color: Color(0xff9FACBD),
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
                                    color: Colors.transparent,
                                  )),
                              filled: true,
                              fillColor: Colors.transparent,
                            ),
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            validator: (String? value) {
                              if (value == "" || value == null) {
                                return 'Please Enter Your Email';
                              }

                              return null;
                            },
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Container(
                        width: width*0.8,
                        height: height*0.07,
                        child: TextFormField(
                          controller: PasswordFieldController,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14,
                              color: Color(0xff9FACBD),
                            ),
                            suffixIcon: new IconButton(
                              iconSize: 20,
                              onPressed: _toggle,
                              icon: (new Icon(_obscureText ? Icons.visibility_off_sharp : Icons.visibility_sharp,
                                  color: Colors.black)),

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
                              return 'Please Enter Your Password';
                            }

                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Reset Pasword'),
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(86, 115, 116, 1),
                            textStyle: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14,
                              color: Color(0xff9FACBD),)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  width: width * 0.8,
                  height: height < 750 ? height * 0.06 : height * 0.07,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "SAVE CHANGES",
                      style: TextStyle(
                        fontFamily: 'Geomanist',
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff557374),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
    
  }
}
