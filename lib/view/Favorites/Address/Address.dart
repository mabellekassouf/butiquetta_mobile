import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Favorites/Checkout/Checkout.dart';
import 'package:butiquetta_mobile/view/Profile/Address%20Book/add_address_manually.dart';
import 'package:butiquetta_mobile/view/Profile/Address%20Book/add_address_maps.dart';
import 'package:flutter/material.dart';

class FavoritesAddressBookScreen extends StatefulWidget {
  bool delivery;

  FavoritesAddressBookScreen({required this.delivery});

  @override
  _FavoritesAddressBookScreenState createState() =>
      _FavoritesAddressBookScreenState();
}

class _FavoritesAddressBookScreenState
    extends State<FavoritesAddressBookScreen> {
  bool setDefaultDelivery = false;
  bool setDefaultBilling = false;
  bool loading = true;

  // getAddress() async {
  //   AddressProvider _address =
  //       Provider.of<AddressProvider>(context, listen: false);
  //   await _address.getListAddress();
  //   setState(() {
  //     loading = false;
  //   });
  // }

  @override
  void initState() {
    //getAddress();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // AddressProvider _address =
    //     Provider.of<AddressProvider>(context, listen: true);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Address Book",
          style: TextStyle(
              fontSize: 25, fontFamily: 'Valencia', color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset(
            'assets/icons/icon_back.png',
            height: 20,
            width: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
            changeScreenReplacement(context, Checkout());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: height * 0.01,
            ),
            Container(
              height: height * 0.06,
              width: width * 0.8,
              child: ElevatedButton(
                onPressed: () async {
                  return await showDialog<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(builder: (context, setState) {
                        return AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25.0))),
                          content: Container(
                            height: height * 0.25,
                            width: width * 0.9,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: width * 0.05, top: height * 0.01),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(Icons.close),
                                          iconSize: 20,
                                          color: Color(0xff567374),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  "Please Select",
                                  style: TextStyle(
                                      fontFamily: 'Geomanist',
                                      fontSize: 16,
                                      color: Colors.black),
                                ),
                                Container(
                                  height: height * 0.02,
                                ),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.6,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      changeScreen(
                                          context,
                                          AddAddressManuallyScreen(
                                              AddressModel(), false, false));
                                    },
                                    child: Text(
                                      "Add Address Manually",
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
                                Container(
                                  height: height * 0.02,
                                ),
                                Container(
                                  height: height * 0.06,
                                  width: width * 0.6,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      changeScreen(
                                          context, AddAddressMapsScreen());
                                    },
                                    child: Text(
                                      "Choose from Maps",
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
                      });
                    },
                  );
                },
                child: Text(
                  "ADD NEW ADDRESS",
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
            Container(
              height: height * 0.02,
            ),
            // loading
            //     ? Column(
            //         children: [
            //           SizedBox(
            //             height: 20,
            //           ),
            //           CircularProgressIndicator()
            //         ],
            //       )
            //     : _address.listaddress == 0
            //         ? Column(
            //             children: [
            //               SizedBox(
            //                 height: 20,
            //               ),
            //               Text("No Address To Display")
            //             ],
            //           )
            //         :
            Container(
              height: height / 1.3,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: height * 0.02,
                  );
                },
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: _address.listaddress.length,
                itemBuilder: (context, index) => Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            width: width,
                            padding:
                                EdgeInsets.symmetric(horizontal: width * 0.05),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 30,
                                      padding:
                                          EdgeInsets.only(right: width * 0.04),
                                      child: Theme(
                                        data: ThemeData(
                                          unselectedWidgetColor:
                                              Color.fromRGBO(85, 115, 116, 1),
                                        ),
                                        child: Checkbox(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide.none,
                                            borderRadius:
                                                BorderRadius.circular(360),
                                          ),
                                          checkColor: Colors.white,
                                          activeColor:
                                              Color.fromRGBO(85, 115, 116, 1),
                                          value: _address.saved.contains(index),
                                          onChanged: (bool? value) {
                                            // if (value == true) {
                                            //   if (_address.saved.length == 0) {
                                            //       setState(() {
                                            //         _address.saved.add(index);
                                            //       });
                                            //     if(widget.delivery==true) {
                                            //       if (toBoolean(
                                            //           _address
                                            //               .listaddress[index]
                                            //               .defaultdelivery) ==
                                            //           true
                                            //       ) {
                                            //         _address
                                            //             .addressorderdelivry =
                                            //         _address
                                            //             .listaddress[index];
                                            //       } else
                                            //       if (toBoolean(
                                            //           _address
                                            //               .listaddress[index]
                                            //               .defaultdelivery) ==
                                            //           false
                                            //       ) {
                                            //          setState(() {
                                            //            _address.saved.remove(index);
                                            //          });
                                            //           _address.addressorderdelivry=AddressModel();
                                            //
                                            //         Fluttertoast.showToast(
                                            //             msg: "Required Set As Default Delivery Address Checked",
                                            //             toastLength: Toast.LENGTH_SHORT,
                                            //             gravity: ToastGravity.CENTER,
                                            //             timeInSecForIosWeb: 1,
                                            //             backgroundColor: Colors.red,
                                            //             textColor: Colors.white,
                                            //             fontSize: 12.0
                                            //         );
                                            //       }
                                            //     }else{
                                            //       if (
                                            //           toBoolean(
                                            //               _address
                                            //                   .listaddress[index]
                                            //                   .defaultbilling) ==
                                            //               true) {
                                            //         _address
                                            //             .addressorderbilling =
                                            //         _address
                                            //             .listaddress[index];
                                            //       } else
                                            //       if (
                                            //           toBoolean(
                                            //               _address
                                            //                   .listaddress[index]
                                            //                   .defaultbilling) ==
                                            //               false
                                            //       ) {
                                            //         setState(() {
                                            //           _address.saved.remove(index);
                                            //         });
                                            //
                                            //           _address.addressorderbilling=AddressModel();
                                            //         Fluttertoast.showToast(
                                            //             msg: "Required Set As Default Billing Address Checked",
                                            //             toastLength: Toast.LENGTH_SHORT,
                                            //             gravity: ToastGravity.CENTER,
                                            //             timeInSecForIosWeb: 1,
                                            //             backgroundColor: Colors.red,
                                            //             textColor: Colors.white,
                                            //             fontSize: 12.0
                                            //         );
                                            //       }
                                            //     }
                                            //   } else {
                                            //       setState(() {
                                            //         _address.saved.remove(
                                            //             _address.saved.last);
                                            //
                                            //         _address.saved.add(index);
                                            //       });
                                            //     if(widget.delivery==true){
                                            //       _address.addressorderdelivry=AddressModel();
                                            //     }else{
                                            //       _address.addressorderbilling=AddressModel();
                                            //     }
                                            //
                                            //
                                            //   }
                                            // } else if (value == false) {
                                            //   setState(() {
                                            //     _address.saved.remove(index);
                                            //   });
                                            //   if(widget.delivery==true){
                                            //     _address.addressorderdelivry=AddressModel();
                                            //   }else{
                                            //     _address.addressorderbilling=AddressModel();
                                            //   }
                                            // }
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  width: width * 0.8,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _address.listaddress[index].name,
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            _address.listaddress[index].address,
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            "City z, State NY",
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            "1801",
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            "Beirut",
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            _address.listaddress[index]
                                                    .country +
                                                " " +
                                                "71407389",
                                            style: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 12,
                                            ),
                                          ),
                                          Container(
                                            height: height * 0.03,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                                height: 20,
                                                child: Checkbox(
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  onChanged: (bool? v) {
                                                    setState(() {
                                                      setDefaultDelivery =
                                                          !setDefaultDelivery;
                                                    });
                                                  },
                                                  value: false,
                                                  activeColor:
                                                      Color(0xff557374),
                                                  fillColor:
                                                      MaterialStateProperty.all<
                                                              Color>(
                                                          Color(0xff557374)),
                                                  focusColor: Color(0xffF5F6F7),
                                                  checkColor: Colors.white,
                                                ),
                                              ),
                                              Container(
                                                width: width * 0.02,
                                              ),
                                              Text(
                                                (setDefaultDelivery ==
                                                        false)
                                                    ? "Set as Default Delivery Address"
                                                    : "Default Delivery Address",
                                                style: TextStyle(
                                                  fontFamily: 'Geomanist',
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              )
                                            ],
                                          ),
                                          Container(
                                            height: height * 0.01,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                                height: 20,
                                                child: Checkbox(
                                                  materialTapTargetSize:
                                                      MaterialTapTargetSize
                                                          .shrinkWrap,
                                                  onChanged: (bool? v) {
                                                    setState(() {
                                                      setDefaultBilling =
                                                          !setDefaultBilling;
                                                    });
                                                  },
                                                  value: false,
                                                  activeColor:
                                                      Color(0xff557374),
                                                  fillColor:
                                                      MaterialStateProperty.all<
                                                              Color>(
                                                          Color(0xff557374)),
                                                  focusColor: Color(0xffF5F6F7),
                                                  checkColor: Colors.white,
                                                ),
                                              ),
                                              Container(
                                                width: width * 0.02,
                                              ),
                                              Text(
                                                (setDefaultBilling == false)
                                                    ? "Set as Default Billing Address"
                                                    : "Billing Address",
                                                style: TextStyle(
                                                  fontFamily: 'Geomanist',
                                                  fontSize: 12,
                                                  color: Colors.black,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      IconButton(
                                        padding: EdgeInsets.zero,
                                        onPressed: () {
                                          changeScreen(
                                              context,
                                              AddAddressManuallyScreen(
                                                  _address.listaddress[index],
                                                  true,
                                                  false));
                                        },
                                        icon: Container(
                                          width: 25,
                                          height: 25,
                                          child: Image.asset(
                                              'assets/icons/icon_edit_item.png'),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                // Spacer(),
                                // Column(
                                //   mainAxisAlignment: MainAxisAlignment.start,
                                //   crossAxisAlignment: CrossAxisAlignment.center,
                                //   children: [
                                //
                                //   ],
                                // )
                              ],
                            ),
                          )),
                    ],
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
