import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
class AddPaymentMethod extends StatefulWidget {
  bool edit;
  CardModel card;
   AddPaymentMethod({@required edit,@required card,});

  @override
  _AddPaymentMethodScreenState createState() => _AddPaymentMethodScreenState();
}

class _AddPaymentMethodScreenState extends State<AddPaymentMethod> {
  TextEditingController cardName = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  final format = DateFormat("yyyy-MM-dd");
  String formattedMonthFrom = "";
  String formattedYearFrom = "";
  String dateMonthFrom = '';
  String dateYearFrom = '';
  DateTime monthform=DateTime.now();
  DateTime yearform=DateTime.now();
  final _formkey = GlobalKey<FormState>();

  String monthValue(){
    if(formattedMonthFrom=="")
      {
        return "Month";
      }
    else
      return formattedMonthFrom;
  }
  String yearValue(){
    if(formattedYearFrom=="")
    {
      return "Year";
    }
    else
      return formattedYearFrom;
  }

  bool setDefaultPayment = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
  return Scaffold(
    backgroundColor: Color(0xffF5F6F7),
    appBar: AppBar(
      elevation: 0,
      centerTitle: true,
      title:  Text(
       !widget.edit? "Add Payment Method":'Edit Payment Method',
        style: TextStyle(
            fontSize: 18,
            fontFamily: 'Valencia',
            color: Colors.black
        ),),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.close,color: Colors.black,))
      ],
    ),
    body: Form(
      key: _formkey,
      child: Column(
        children: [
          Container(height: height*0.03,),
          Container(
            height: height*0.25,
            width: width,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: width*0.05,vertical: height*0.01),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Card Details",
              style: TextStyle(
                fontFamily: 'Geomanist',
                fontSize: 16
              ),),
                Container(
                  width: width*0.9,
                  height: height*0.06,
                  child: TextFormField(
                    //   key: ,
                    controller: cardNumber,
                    keyboardType: TextInputType.name,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: "Card Number",
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
                        return 'Please Enter Card Number';
                      }else if( value.length<=12){
                        return 'Please Enter Card Number >11';
                      }

                      return null;
                    },
                  ),
                ),
                Container(
                  width: width*0.9,
                  height: height*0.06,
                  child: TextFormField(
                    //   key: ,
                    controller: cardName,
                    keyboardType: TextInputType.name,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: "Name on Card",
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
                        return 'Please Enter Name on Card';
                      }

                      return null;
                    },
                  ),
                ),

                Row(
                  children: [
                    Text("Expiry date: ",
                    style: TextStyle(
                      fontFamily: 'Geomanist',
                      fontSize: 14
                    ),),
                    Container(width: width*0.02,),
                    Text(monthValue(),
                    style: TextStyle(
                      fontFamily: 'Geomanist',
                      fontSize: 14,
                      color: Color(0xff9FACBD),
                    ),),
                    SizedBox(
                      width: 30,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: (){
                          showDialog(context: context, builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: MediaQuery.of(context).size.height/2.5,
                                width: MediaQuery.of(context).size.width/3.5,
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: CupertinoTheme(
                                          data: CupertinoThemeData(
                                              textTheme: CupertinoTextThemeData(
                                                  dateTimePickerTextStyle: TextStyle(
                                                    color: Colors.black,
                                                  )
                                              )
                                          ),
                                          child: CupertinoDatePicker(
                                            initialDateTime: DateTime.now(),
                                            mode: CupertinoDatePickerMode.date,
                                            onDateTimeChanged: (dateTime){
                                              setState(() {
                                                this.dateMonthFrom = dateTime.toString();
                                                formattedMonthFrom = DateFormat.M().format(dateTime);
                                                monthform = dateTime;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        icon: Container(
                          width: 15,
                          height: 15,
                          child: Image.asset(
                            'assets/icons/icon_dropdown.png',
                          ),
                        ),
                      ),
                    ),
                    Text("/ "+yearValue(),
                      style: TextStyle(
                          fontFamily: 'Geomanist',
                          fontSize: 14,
                          color: Color(0xff9FACBD)
                      ),),
                    SizedBox(
                      width: 30,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: (){
                          showDialog(context: context, builder: (context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Container(
                                height: MediaQuery.of(context).size.height/2.5,
                                width: MediaQuery.of(context).size.width/3.5,
                                color: Colors.white,
                                child: Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        child: CupertinoTheme(
                                          data: CupertinoThemeData(
                                              textTheme: CupertinoTextThemeData(
                                                  dateTimePickerTextStyle: TextStyle(
                                                    color: Colors.black,
                                                  )
                                              )
                                          ),
                                          child: CupertinoDatePicker(
                                            initialDateTime: DateTime.now(),
                                            mode: CupertinoDatePickerMode.date,
                                            onDateTimeChanged: (dateTime){
                                              setState(() {
                                                this.dateYearFrom = dateTime.toString();
                                                formattedYearFrom = DateFormat.y().format(dateTime);
                                                yearform = dateTime;
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                        },
                        icon: Container(
                            width: 15,
                            height: 15,
                            child: Image.asset(
                                'assets/icons/icon_dropdown.png',
                            ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ),
          Container(height: height*0.03,),
      Container(
        height: height*0.05,
        width: width*0.5,
        child: ElevatedButton(
          onPressed: () {
          },
          child: Text(!widget.edit?"ADD CARD":"EDIT CARD",
            style: TextStyle(
              fontFamily: 'Geomanist',
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          style: ElevatedButton.styleFrom(
            elevation: 10,
            primary: Color(0xff557374),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color(0xff557374),
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
        ],
      ),
    ),
  );
  }
}
