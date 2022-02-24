import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Favorites/Address/Address.dart';
import 'package:butiquetta_mobile/view/Favorites/Payment/choose_Payment.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key});

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  final TextEditingController promoFieldController = TextEditingController();
  final TextEditingController NameFieldController = TextEditingController();
  final TextEditingController EmailFieldController = TextEditingController();
  final TextEditingController MobileFieldController = TextEditingController();
  final TextEditingController AddressFieldController = TextEditingController();
  final TextEditingController CityFieldController = TextEditingController();
  final TextEditingController CountryFieldController = TextEditingController();
  final TextEditingController PostcodeFieldController = TextEditingController();
  bool DeliveryAddress = false;
  bool BillingAddress = false;
  @override
  Widget build(BuildContext context) {
    // AddressProvider _address =
    // Provider.of<AddressProvider>(context, listen: true);
    // CardProvider _card =
    // Provider.of<CardProvider>(context, listen: true);
    // CartProvider _cart=Provider.of<CartProvider>(context,listen:true);

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
            "Checkout",
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
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: width,
                  height: 190,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "My Cart",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Geomanist',
                                  color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text('View'),
                            style: TextButton.styleFrom(
                                primary: Color.fromRGBO(86, 115, 116, 1),
                                textStyle: TextStyle(
                                    fontSize: 13,
                                    fontFamily: 'Geomanist',
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                      Flexible(
                        child: ListView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: AspectRatio(
                                aspectRatio: 0.88,
                                child: Container(
                                  width: 100.0,
                                  color: Colors.white,
                                  child: Image.asset(
                                      'assets/images/image-shirt.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: AspectRatio(
                                aspectRatio: 0.88,
                                child: Container(
                                  width: 100.0,
                                  color: Colors.white,
                                  child: Image.asset(
                                      'assets/images/whiteShirt.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: AspectRatio(
                                aspectRatio: 0.88,
                                child: Container(
                                  width: 100.0,
                                  color: Colors.white,
                                  child:
                                      Image.asset('assets/images/handbag.png'),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Color.fromRGBO(86, 115, 116, 1),
                                  ),
                                ),
                                width: 40.0,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '+3',
                                    style: TextStyle(
                                      fontFamily: 'Geomanist',
                                      color: Color.fromRGBO(86, 115, 116, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: width * 0.6,
                  height: height * 0.08,
                  child: TextFormField(
                    controller: promoFieldController,
                    decoration: InputDecoration(
                      hintText: "Promo Code",
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
                      fillColor: Color(0xffF5F6F7),
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    validator: (String? value) {
                      if (value == "" || value == null) {
                        return 'Please Enter Promo Code';
                      }

                      return null;
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Remove'),
                  style: TextButton.styleFrom(
                      primary: Color.fromRGBO(86, 115, 116, 1),
                      textStyle: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Geomanist',
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.white,
              width: width,
              height: _address.addressorderdelivry.name==""?height * 1.2:height*0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          "Delivery Address :",
                          style: TextStyle(
                              color: Color.fromRGBO(146, 156, 170, 1),
                              fontFamily: 'Geomanist'),
                        ),
                      ),
                      Spacer(),
                      _address.addressorderdelivry.name==""?  Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: ElevatedButton(
                          onPressed: () {
                            changeScreen(context, FavoritesAddressBookScreen(delivery:true));
                          },
                          child: Text(
                            'SELECT',
                            style: TextStyle(
                                color: Color.fromRGBO(85, 115, 116, 1),
                                fontSize: 13,
                                fontFamily: 'Geomanist',
                                fontWeight: FontWeight.w400),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(
                              color: Color.fromRGBO(85, 115, 116, 1),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ): Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: TextButton(
                        onPressed: () {
                          changeScreen(context, FavoritesAddressBookScreen(delivery: false,));
                        },
                        child: Text('Change'),
                        style: TextButton.styleFrom(
                            primary: Color.fromRGBO(86, 115, 116, 1),
                            textStyle: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Geomanist',
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    ],
                  ),
                  _address.addressorderdelivry.name!="" ?Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _address.addressorderdelivry.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Geomanist',
                                fontSize: 14),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text.rich(
                            TextSpan(
                              text: "Street X,Building Y",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Geomanist',
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text.rich(
                            TextSpan(
                              text: _address.addressorderdelivry.address,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Geomanist',
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text.rich(
                            TextSpan(
                              text: _address.addressorderdelivry.postcode,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Geomanist',
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text.rich(
                            TextSpan(
                              text: _address.addressorderdelivry.city,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Geomanist',
                                  fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text.rich(
                            TextSpan(
                              text:_address.addressorderdelivry.country+_address.addressorderdelivry.mobile,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Geomanist',
                                  fontSize: 14),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ):Container(),
                  _address.addressorderdelivry.name==""?   Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      "Contact Information",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Geomanist',
                          fontWeight: FontWeight.bold),
                    ),
                  ):Container(),
                  SizedBox(
                    height: 10,
                  ),
                  _address.addressorderdelivry.name==""?  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                        width: width * 0.8,
                        height: height * 0.08,
                        child: TextFormField(
                          controller: NameFieldController,
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
                              return 'Please Enter Your Full Name';
                            }

                            return null;
                          },
                        )),
                  ):Container(),
                  _address.addressorderdelivry.name==""?  Padding(
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
                  ):Container(),
                  _address.addressorderdelivry.name==""? Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                        width: width * 0.8,
                        height: height * 0.08,
                        child: TextFormField(
                          controller: MobileFieldController,
                          decoration: InputDecoration(
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
                              return 'Please Enter Your Mobile Number';
                            }

                            return null;
                          },
                        )),
                  ):Container(),
                  _address.addressorderdelivry.name==""? SizedBox(
                    height: 10,
                  ):Container(),
                  _address.addressorderdelivry.name==""? Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      "Address Details",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Geomanist',
                          fontWeight: FontWeight.bold),
                    ),
                  ):Container(),
                  _address.addressorderdelivry.name==""?   SizedBox(
                    height: 10,
                  ):Container(),
                  _address.addressorderdelivry.name==""?   Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                        width: width * 0.8,
                        height: height * 0.08,
                        child: TextFormField(
                          controller: AddressFieldController,
                          decoration: InputDecoration(
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
                              return 'Please Enter Your Address';
                            }

                            return null;
                          },
                        )),
                  ):Container(),
                  _address.addressorderdelivry.name==""?  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                        width: width * 0.8,
                        height: height * 0.08,
                        child: TextFormField(
                          controller: CityFieldController,
                          decoration: InputDecoration(
                            hintText: "Town / City",
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
                              return 'Please Enter Your City';
                            }

                            return null;
                          },
                        )),
                  ):Container(),
                  _address.addressorderdelivry.name==""?   Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                        width: width * 0.8,
                        height: height * 0.08,
                        child: TextFormField(
                          controller: CountryFieldController,
                          decoration: InputDecoration(
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
                              return 'Please Enter Your Country';
                            }

                            return null;
                          },
                        )),
                  ):Container(),
                  _address.addressorderdelivry.name==""?  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(
                        width: width * 0.8,
                        height: height * 0.08,
                        child: TextFormField(
                          controller: PostcodeFieldController,
                          decoration: InputDecoration(
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
                              return 'Please Enter Your Postcode';
                            }

                            return null;
                          },
                        )),
                  ):Container(),
                  _address.addressorderdelivry.name==""? Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Checkbox(
                          onChanged: (bool? Deladdress) {
                            setState(() {
                              DeliveryAddress = Deladdress!;
                            });
                          },
                          value: DeliveryAddress,
                          fillColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(85, 115, 116, 1)),
                          checkColor: Colors.white,
                        ),
                        Text(
                          "Set as Default Delivery Address",
                          style: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ):Container(),
                  _address.addressorderdelivry.name==""?   Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Row(
                      children: [
                        Checkbox(
                          onChanged: (bool? Billaddress) {
                            setState(() {
                              BillingAddress = Billaddress!;
                            });
                          },
                          value: BillingAddress,
                          fillColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(85, 115, 116, 1)),
                          checkColor: Colors.white,
                        ),
                        Text(
                          "Set as Default Billing Address",
                          style: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ):Container(),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                color: Colors.white,
                height: 200,
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Delivery Options",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Geomanist',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor: Color(0xff557374),
                            ),
                            child: Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                checkColor: Colors.white,
                                activeColor: Color(0xff557374),
                                onChanged: (bool? standarddel) {
                                  // if(_cart.DeliveryExpress==true){
                                  //
                                  // }else{
                                  //   setState(() {
                                  //     _cart.DeliveryStandard = standarddel;
                                  //   });
                                  // }

                                },
                                value: true,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Standard Delivery",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Geomanist',
                                        fontSize: 16),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      "Free",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(86, 115, 116, 1),
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text.rich(
                                TextSpan(
                                  text:
                                      "Delivered on or before 3 December 2021",
                                  style: TextStyle(
                                    color: Color(0xff557374),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Geomanist',
                                  ),
                                ),
                                maxLines: 1,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Color.fromRGBO(112, 112, 112, 1),
                      indent: 25,
                      endIndent: 25,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: Theme(
                            data: ThemeData(
                              unselectedWidgetColor: Color(0xff557374),
                            ),
                            child: Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                checkColor: Colors.white,
                                activeColor: Color(0xff557374),
                                onChanged: (bool? expressdel) {
                                  // if(_cart.DeliveryStandard==true){
                                  //
                                  // }else{
                                  //   if(expressdel==true){
                                  //     _cart.totprice=_cart.totprice+10;
                                  //     _cart.notifyListeners();
                                  //     print(_cart.totprice);
                                  //     setState(() {
                                  //       _cart.stddeli=10;
                                  //       _cart.DeliveryExpress = expressdel;
                                  //     });
                                  //   }else{
                                  //
                                  //     _cart.totprice=_cart.totprice-10;
                                  //     _cart.notifyListeners();
                                  //     print(_cart.totprice);
                                  //     setState(() {
                                  //       _cart.stddeli=0;
                                  //       _cart.DeliveryExpress = expressdel;
                                  //     });
                                  //   }
                                  // }
                                },
                                value: false,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Express Delivery",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'Geomanist',
                                        fontSize: 16),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15.0),
                                    child: Text(
                                      "10.00\$",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(86, 115, 116, 1),
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: "Delivered within 2 working days",
                                  style: TextStyle(
                                    color: Color(0xff557374),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Geomanist',
                                  ),
                                ),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 25,
            ),
            Container(
              height: _address.addressorderbilling.name!=""?height*0.35:height*0.1,
              width: width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Billing Address :",
                          style: TextStyle(
                              color: Color.fromRGBO(146, 156, 170, 1),
                              fontFamily: 'Geomanist',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Spacer(),
                      _address.addressorderbilling.name==""?  Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: ElevatedButton(
                          onPressed: () {

                            changeScreen(context, FavoritesAddressBookScreen(delivery:false));
                          },
                          child: Text(
                            'SELECT',
                            style: TextStyle(
                                color: Color.fromRGBO(85, 115, 116, 1),
                                fontSize: 13,
                                fontFamily: 'Geomanist',
                                fontWeight: FontWeight.w400),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(
                              color: Color.fromRGBO(85, 115, 116, 1),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ): Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: TextButton(
                          onPressed: () {
                            changeScreen(context, FavoritesAddressBookScreen(delivery:false));
                          },
                          child: Text('Change'),
                          style: TextButton.styleFrom(
                              primary: Color.fromRGBO(86, 115, 116, 1),
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Geomanist',
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                  _address.addressorderbilling.name!="" ?
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address order billing name",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Geomanist',
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                text: "Street X,Building Y",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Geomanist',
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                text: "_address.addressorderbilling.address",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Geomanist',
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                text: "1801",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Geomanist',
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                text: "Beirut",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Geomanist',
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                text: _address.addressorderbilling.country+"71407389",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Geomanist',
                                    fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ):Container(),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height:_card.cardchoosed.cardnumber!=""? 230:100,
              width: width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "Payment :",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Geomanist',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      Spacer(),
                      _card.cardchoosed.cardnumber==""?  Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: ElevatedButton(
                          onPressed: () {
                            changeScreen(context, ChoosePaymentScreen());
                          },
                          child: Text(
                            'SELECT',
                            style: TextStyle(
                                color: Color.fromRGBO(85, 115, 116, 1),
                                fontSize: 13,
                                fontFamily: 'Geomanist',
                                fontWeight: FontWeight.w400),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(
                              color: Color.fromRGBO(85, 115, 116, 1),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ): Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: TextButton(
                          onPressed: () {
                            changeScreen(context, ChoosePaymentScreen());
                          },
                          child: Text('Change'),
                          style: TextButton.styleFrom(
                              primary: Color.fromRGBO(86, 115, 116, 1),
                              textStyle: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Geomanist',
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                  _card.cardchoosed.cardnumber!=""? Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "VISA "+_card.cardchoosed.cardnumber.substring(0,4)+" **** **** **** ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Geomanist',
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                text: _card.cardchoosed.namecard,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Geomanist',
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text.rich(
                              TextSpan(
                                text: "Expiry date: 07/2020}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Geomanist',
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: "CVV :",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Geomanist',
                                        fontSize: 14),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Card(
                                    color: Color.fromRGBO(245, 246, 247, 1),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SizedBox(
                                      width: width * 0.2,
                                      height: height * 0.05,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ):Container(),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    ' Sub-Total',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Geomanist',
                    ),
                  ),
                  Spacer(),
                  Text(
                  //  _cart.stddeli==0?'${_cart.totprice}\$':'${_cart.totprice-10}\$',
                      '250\$',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Geomanist',
                        color: Color.fromRGBO(86, 115, 116, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    ' Delivery',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Geomanist',
                    ),
                  ),
                  Spacer(),
                  Text(
                    '${_cart.stddeli}\$',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Geomanist',
                        color: Color.fromRGBO(86, 115, 116, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    ' Promo Code',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Geomanist',
                    ),
                  ),
                  Spacer(),
                  Text(
                    '- 200\$',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Geomanist',
                        color: Color.fromRGBO(86, 115, 116, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  Text(
                    'Total amount',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Geomanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '5000\$',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Geomanist',
                        color: Color.fromRGBO(86, 115, 116, 1)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: width * 0.8,
              height: height < 750 ? height * 0.06 : height * 0.07,
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
                            height: height * 0.3,
                            width: width * 1.15,
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
                                Stack(
                                  children: [
                                    Container(
                                      child: Stack(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/icons/icon-circle.svg',
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(15.0),
                                            child: SvgPicture.asset(
                                              'assets/icons/check-icon.svg',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                               Text("Thank you for your order!",
                                 style: TextStyle(
                                   color: Colors.black,
                                   fontSize: 17,
                                   fontFamily: 'Geomanist',
                                 ),),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 65.0),
                                    child: Text("Please check your email for the order confirmation",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontFamily: 'Geomanist',
                                      ),),
                                  ),
                                SizedBox(
                                  height: 5,
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
                  "CONFIRM PAYMENT",
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
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
