import 'package:badges/badges.dart';
import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/webview/CartView/Cartview.dart';
import 'package:butiquetta_mobile/webview/SavedItems/saveditems.dart';
import 'package:butiquetta_mobile/webview/authentication/Sign_up.dart';
import 'package:butiquetta_mobile/webview/home/web_home.dart';
import 'package:butiquetta_mobile/webview/productPage/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBarWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: 50,
      color: Colors.white,
      padding: EdgeInsets.only(left: width*0.03,right: width*0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            height: height*0.03,
            width: width*0.2,
            child: GestureDetector(
              onTap: (){
                changeScreen(context, WebHomeView());
              },
                //child: Image.asset('assets/images/logo_web.png')),
              child: Text("Company Name.")),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              _NavBarItem('Featured Products'),
              SizedBox(
                width: width*0.02,
              ),
              Text(
                "|",
                style: TextStyle(
                    fontFamily: 'Geomanist',
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
              SizedBox(
                width: width*0.02,
              ),
              _NavBarItem('Plastic'),
              SizedBox(
                width: width*0.02,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: width*0.04,
                child: IconButton(
                    iconSize: 15,
                    onPressed: (){
                      changeScreen(context, WebProductPage());
                    },
                    icon: SvgPicture.asset('assets/icons/icon_search.svg',
                      color: Colors.black,),
                ),
              ),
                SizedBox(
                  width: width*0.04,
                  child: IconButton(
                    iconSize: 15,
                    onPressed: (){
                      changeScreen(context, SavedItems());
                    },
                    icon: SvgPicture.asset('assets/icons/icon_favorites.svg',
                      color: Colors.black,),
              ),
                ),
              SizedBox(
                width: width*0.04,
                child: Stack(
                  children: [
                    IconButton(
                      iconSize: 15,
                      onPressed: (){
                        changeScreen(context, WebCartView());
                      },
                      icon: SvgPicture.asset('assets/icons/icon_cart.svg',
                        color: Colors.black,),
                    ),
                    Positioned(
                      right: width*0.007,
                        bottom: width*0.001,
                        child: Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color.fromRGBO(85, 115, 116, 1),
                          ),
                          child:Center(
                            child: Text(
                              '1',
                              style: TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width*0.04,
                child: IconButton(
                  iconSize: 15,
                  onPressed: (){
                    changeScreen(context, WebSignUp());
                  },
                  icon: Image.asset('assets/icons/icon_myprofile.png',
                    color: Colors.black,),
                ),
              ),
              
              TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: (){},
                  child: Text(
                "EN",
                    style: TextStyle(
                      fontFamily: 'Geomanist',
                      fontSize: 14,
                      color: Color(0xffB2B9C3)
                    ),
              )),
              Text(
                "|",
                style: TextStyle(
                    fontFamily: 'Geomanist',
                    fontSize: 14,
                    color: Color(0xffB2B9C3)
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                  onPressed: (){},
                  child: Text(
                    "USD",
                    style: TextStyle(
                        fontFamily: 'Geomanist',
                        fontSize: 14,
                        color: Color(0xffB2B9C3)
                    ),
                  ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem(
      this.title, {
        Key? key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 14),
    );
  }
}