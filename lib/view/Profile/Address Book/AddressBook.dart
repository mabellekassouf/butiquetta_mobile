import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Profile/Address%20Book/add_address_manually.dart';
import 'package:butiquetta_mobile/view/Profile/Address%20Book/add_address_maps.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:string_validator/string_validator.dart';
class ProfileAddressBookScreen extends StatefulWidget {
  const ProfileAddressBookScreen({Key? key}) : super(key: key);

  @override
  _ProfileAddressBookScreenState createState() => _ProfileAddressBookScreenState();
}

class _ProfileAddressBookScreenState extends State<ProfileAddressBookScreen> {
  bool setDefaultDelivery = false;
  bool setDefaultBilling = false;
  bool loading = true;

  @override
  void initState() {
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
          "Address Book",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Valencia',
              color: Colors.black
          ),),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset('assets/icons/icon_back.png',
            height: 20,
            width: 20,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(height: height*0.01,),
            Container(
              height: height*0.06,
              width: width*0.8,
              child: ElevatedButton(
                onPressed: ()async{
                  return await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                          builder: (context, setState) {
                            return AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(25.0))
                              ),
                              content: Container(
                                height: height * 0.25,
                                width: width * 0.9,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: width*0.05,top: height*0.01),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width:20,
                                            height: 20,
                                            child: IconButton(
                                              onPressed: (){
                                                Navigator.pop(context);
                                              },
                                              icon: Icon(Icons.close),
                                              iconSize: 20,
                                              color: Color(0xff567374),
                                              padding: EdgeInsets.zero,),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Text("Please Select",
                                      style: TextStyle(
                                          fontFamily: 'Geomanist',
                                          fontSize: 16,
                                          color: Colors.black
                                      ),),
                                    Container(height: height*0.02,),
                                    Container(
                                      height: height*0.06,
                                      width: width*0.6,
                                      child: ElevatedButton(
                                        onPressed: (){
                                          changeScreen(context, AddAddressManuallyScreen(false,true));
                                        },
                                        child: Text("Add Address Manually",
                                          style: TextStyle(
                                            fontFamily: 'Geomanist',
                                            fontSize: 15,
                                            color: Color(0xff557374),
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffF5F6F7),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: Color(0xff557374),
                                            ),
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(height: height*0.02,),
                                    Container(
                                      height: height*0.06,
                                      width: width*0.6,
                                      child: ElevatedButton(
                                        onPressed: (){
                                          changeScreen(context, AddAddressMapsScreen());
                                        },
                                        child: Text("Choose from Maps",
                                          style: TextStyle(
                                            fontFamily: 'Geomanist',
                                            fontSize: 15,
                                            color: Color(0xff557374),
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffF5F6F7),
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
                      );
                    },
                  );
                },
                child: Text("ADD NEW ADDRESS",
                  style: TextStyle(
                    fontFamily: 'Geomanist',
                    fontSize: 18,
                    color: Color(0xff557374),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF5F6F7),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff557374),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Container(height: height*0.02,),
            // loading
            //     ? Column(
            //   children: [
            //     SizedBox(
            //       height: 50,
            //     ),
            //     CircularProgressIndicator()
            //   ],
            // )
            //     : _address.listaddress == 0
            //     ? Column(
            //   children: [
            //     SizedBox(
            //       height: 50,
            //     ),
            //     Text("No Address To Display")
            //   ],
            // )
            //     : Container(
             Container(
              height: height/1.3,
              child:ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: height*0.02,
                  );
              },
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) =>
                  Dismissible(
                    key: Key(_address.listaddress[index].idaddress),
                    direction: DismissDirection.endToStart,
                    onDismissed: (direction) {

                    },
                      background: Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(239, 216, 203, 1.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 30.0, horizontal: 53),
                                  child:
                                  SvgPicture.asset('assets/icons/icon_trash.svg'),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 35),
                                  child: Text("DELETE",
                                      style: TextStyle(
                                        fontFamily: 'Geomanist',
                                        color: Color.fromRGBO(85, 115, 116, 1),
                                        fontSize: 19,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10.0),
                                child: Container(
                                  width: width,
                                  padding: EdgeInsets.symmetric(horizontal: width*0.05),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(_address.listaddress[index].name,
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text("Street X, Building Y",
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(_address.listaddress[index].address,
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text("1801",
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text("Beirut",
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(_address.listaddress[index].country+"71407389",
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Container(height: height*0.03,),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                                height: 20,
                                                child: Checkbox(
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  onChanged: (bool? v){
                                                    setState(() {
                                                      setDefaultDelivery=!setDefaultDelivery;
                                                    });
                                                  },
                                                  value: false,
                                                  activeColor: Color(0xff557374),
                                                  fillColor: MaterialStateProperty.all<Color>(Color(0xff557374)),
                                                  focusColor: Color(0xffF5F6F7),
                                                  checkColor: Colors.white,
                                                ),
                                              ),
                                              Container(width: width*0.02,),
                                              Text((setDefaultDelivery==
                                                  false)?"Set as Default Delivery Address":
                                              "Default Delivery Address",
                                                style: TextStyle(
                                                  fontFamily: 'Geomanist',
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),)
                                            ],
                                          ),
                                          Container(height: height*0.01,),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                                height: 20,
                                                child: Checkbox(
                                                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                  onChanged: (bool? v){
                                                    setState(() {
                                                      setDefaultBilling=!setDefaultBilling;
                                                    });
                                                  },
                                                  value: setDefaultBilling,
                                                  activeColor: Color(0xff557374),
                                                  fillColor: MaterialStateProperty.all<Color>(Color(0xff557374)),
                                                  focusColor: Color(0xffF5F6F7),
                                                  checkColor: Colors.white,
                                                ),
                                              ),
                                              Container(width: width*0.02,),
                                              Text((setDefaultBilling ==
                                                  false)?
                                              "Set as Default Billing Address":"Billing Address",
                                                style: TextStyle(
                                                  fontFamily: 'Geomanist',
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),)
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: (){
                                              changeScreen(context, AddAddressManuallyScreen(true,true));
                                            },
                                            icon: Container(
                                              width: 25,
                                              height: 25,
                                              child: Image.asset('assets/icons/icon_edit_item.png'),),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ],
                        ),
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
