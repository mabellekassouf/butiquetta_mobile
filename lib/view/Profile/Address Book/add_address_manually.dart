import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:string_validator/string_validator.dart';

import 'AddressBook.dart';

class AddAddressManuallyScreen extends StatefulWidget {
  // AddressModel  address;
  bool edit;
  bool profile;

  AddAddressManuallyScreen(this.edit, this.profile);

  @override
  _AddAddressManuallyScreenState createState() =>
      _AddAddressManuallyScreenState();
}

class _AddAddressManuallyScreenState extends State<AddAddressManuallyScreen> {
  bool setDeliveryAddress = false;
  bool setBillingAddress = false;
  bool loading = false;
  final _formkey = GlobalKey<FormState>();
  TextEditingController addressName = TextEditingController();
  TextEditingController addressEmail = TextEditingController();
  TextEditingController addressMobile = TextEditingController();
  TextEditingController addressDetails = TextEditingController();
  TextEditingController addressCity = TextEditingController();
  TextEditingController addressCountry = TextEditingController();
  TextEditingController addressPostCode = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // AddressProvider _address = Provider.of<AddressProvider>(context, listen: true);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          !widget.edit ? "Add Address" : "Edit Address",
          style: TextStyle(
              fontSize: 25, fontFamily: 'Valencia', color: Colors.black),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Container(
            width: width,
            child: Column(
              children: [
                Container(
                  height: height * 0.02,
                ),
                Container(
                  width: width,
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Information",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Geomanist',
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        child: TextFormField(
                          //   key: ,
                          controller: addressName,
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
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
                            )),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),

                          validator: (String? value) {
                            if (value == "" || value == null) {
                              return 'Please Enter Full Name';
                            }

                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        child: TextFormField(
                          //   key: ,
                          controller: addressEmail,
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
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
                              color: Color(0xffE6E6E6),
                            )),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),

                          validator: (String? value) {
                            if (value == "" || value == null) {
                              return 'Please Enter Email';
                            }

                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        child: TextFormField(
                          //   key: ,
                          controller: addressMobile,
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: "Mobile",
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
                            )),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),

                          validator: (String? value) {
                            if (value == "" || value == null) {
                              return 'Please Enter Mobile';
                            }

                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.02,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address Details",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Geomanist',
                          fontSize: 16,
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        child: TextFormField(
                          //   key: ,
                          controller: addressDetails,
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: "Address",
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
                            )),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),

                          validator: (String? value) {
                            if (value == "" || value == null) {
                              return 'Please Enter Address';
                            }

                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        child: TextFormField(
                          //   key: ,
                          controller: addressCity,
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: "Town/City",
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
                            )),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),

                          validator: (String? value) {
                            if (value == "" || value == null) {
                              return 'Please Enter Town/City';
                            }

                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        child: TextFormField(
                          //   key: ,
                          controller: addressCountry,
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: "Country",
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
                            )),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),

                          validator: (String? value) {
                            if (value == "" || value == null) {
                              return 'Please Enter Country';
                            }

                            return null;
                          },
                        ),
                      ),
                      Container(
                        width: width * 0.9,
                        height: height * 0.06,
                        child: TextFormField(
                          //   key: ,
                          controller: addressPostCode,
                          keyboardType: TextInputType.name,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            hintText: "Postcode",
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
                            )),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),

                          validator: (String? value) {
                            if (value == "" || value == null) {
                              return 'Please Enter Postcode';
                            }

                            return null;
                          },
                        ),
                      ),
                      Container(
                        height: height * 0.01,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: height * 0.01),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onChanged: (bool? v) {
                                  setState(() {
                                    setDeliveryAddress = v!;
                                  });
                                },
                                value: setDeliveryAddress,
                                activeColor: Color(0xffF5F6F7),
                                fillColor: MaterialStateProperty.all<Color>(
                                    Color(0xffF5F6F7)),
                                focusColor: Color(0xffF5F6F7),
                                checkColor: Colors.white,
                              ),
                            ),
                            Text(
                              "Set as Default Delivery Address",
                              style: TextStyle(
                                fontFamily: 'Geomanist',
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: height * 0.01),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: Checkbox(
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                onChanged: (bool? v) {
                                  setState(() {
                                    setBillingAddress = v!;
                                  });
                                },
                                value: setBillingAddress,
                                activeColor: Color(0xffF5F6F7),
                                fillColor: MaterialStateProperty.all<Color>(
                                    Color(0xffF5F6F7)),
                                focusColor: Color(0xffF5F6F7),
                                checkColor: Colors.white,
                              ),
                            ),
                            Text(
                              "Set as Default Billing Address",
                              style: TextStyle(
                                fontFamily: 'Geomanist',
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height * 0.02,
                ),
                loading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : Container(
                        height: height * 0.06,
                        width: width * 0.7,
                        child: ElevatedButton(
                          onPressed: () async {

                          },
                          child: Text(
                            !widget.edit ? "SAVE ADDRESS" : "EDIT ADDRESS",
                            style: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 22,
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
                Container(
                  height: height * 0.02,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
