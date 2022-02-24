import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Favorites/Checkout/Checkout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class snackcheckout extends StatefulWidget {
  const snackcheckout({Key? key}) : super(key: key);

  @override
  State<snackcheckout> createState() => _snackcheckoutState();
}

class _snackcheckoutState extends State<snackcheckout> {
  final TextEditingController promoFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // CartProvider _cart=Provider.of<CartProvider>(context,listen:true);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      height: 275,
      decoration: BoxDecoration(
          border: Border.all(
        color: Color(0xffF5F6F7),
        width: 5,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: width * 0.6,
                height: height * 0.08,
                child: TextFormField(
                  focusNode: FocusNode(),
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
                child: Text('Apply'),
                style: TextButton.styleFrom(
                    primary: Color.fromRGBO(86, 115, 116, 1),
                    textStyle: TextStyle(
                        fontSize: 13,
                        fontFamily: 'Geomanist',
                        fontWeight: FontWeight.w400)),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                ' Sub-Total',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Geomanist',
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text('1000\$',
                //child: Text('${_cart.totprice}\$',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Geomanist',
                  color: Color.fromRGBO(86, 115, 116, 1)
                ),),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                ' Promo Code',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Geomanist',
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text('- 200\$',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Geomanist',
                      color: Color.fromRGBO(86, 115, 116, 1)
                  ),),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
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
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Text('1000\$',
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Geomanist',
                      color: Color.fromRGBO(86, 115, 116, 1)
                  ),),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: width*0.8,
            height:height<790? height*0.05:height*0.07,
            child: ElevatedButton(
              onPressed: (){
                changeScreen(context, Checkout());
              },
              child: Text("PROCEED TO CHECKOUT",
                style: TextStyle(
                  fontFamily: 'Geomanist',
                  fontSize: 15,
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
        ],
      ),
    );
  }
}
