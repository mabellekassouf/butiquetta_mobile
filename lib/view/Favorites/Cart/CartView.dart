import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Favorites/Cart/widgets/Cart.dart';
import 'package:butiquetta_mobile/view/Search/Search_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/snack_checkout.dart';

class CartView extends StatefulWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  //bool loading = true;

  // getCart() async {
  //   CartProvider _cart = Provider.of<CartProvider>(context, listen: false);
  //   await _cart.getcart();
  //   setState(() {
  //     loading = false;
  //   });
  // }

  @override
  void initState() {
    //getCart();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //CartProvider _cart = Provider.of<CartProvider>(context, listen: true);

    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62.0),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "My Cart",
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    "5 items",
                    style: TextStyle(
                      color: Color.fromRGBO(180, 187, 197, 1),
                      fontSize: 15,
                      fontFamily: 'Geomanist',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            //IF STILL LOADING
            // loading
            //     ? SizedBox(
            //         height: MediaQuery.of(context).size.height / 3,
            //         child: Center(
            //           child: CircularProgressIndicator(),
            //         ))

            //IF EMPTY CART
            //     _cart.listcart.length == 0
            //         ? Column(
            //             children: [
            //               Center(
            //                 child: Container(
            //                   child: Padding(
            //                     padding:
            //                         const EdgeInsets.only(top: 35.0, right: 5),
            //                     child:
            //                         Image.asset("assets/images/EmptyCart.png"),
            //                   ),
            //                 ),
            //               ),
            //               SizedBox(
            //                 height: 10,
            //               ),
            //               Text(
            //                 "Your cart is empty",
            //                 style: TextStyle(
            //                     fontFamily: 'Geomanist',
            //                     fontSize: 20,
            //                     color: Colors.black),
            //               ),
            //               SizedBox(
            //                 height: 20,
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(left: 8.0),
            //                 child: ElevatedButton(
            //                   onPressed: () {
            //                     changeScreen(context, SearchScreen());
            //                   },
            //                   child: Text(
            //                     "BROWSE FOR PRODUCTS",
            //                     style: TextStyle(
            //                       fontFamily: 'Geomanist',
            //                       fontSize: 16,
            //                       color: Colors.white,
            //                     ),
            //                   ),
            //                   style: ElevatedButton.styleFrom(
            //                     primary: Color(0xff557374),
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(5),
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           )
            CartList(),
            snackcheckout(),
          ],
        ),
      ),
    );
  }
}

/*
Column(
          children: [
            Center(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 35.0,right: 5),
                  child: Image.asset("assets/images/EmptyCart.png"),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Your cart is empty",
            style: TextStyle(
              fontFamily: 'Geomanist',
              fontSize: 20,
              color: Colors.black
            ),),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ElevatedButton(
                onPressed: () {
                    changeScreen(context,SearchScreen());
                },
                child: Text(
                  "BROWSE FOR PRODUCTS",
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
          ],
        ),
*/
