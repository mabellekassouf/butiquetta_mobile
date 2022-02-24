import 'package:ant_icons/ant_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      padding: EdgeInsets.only(
          left: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          top: 50.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          bottom: 20.0),
      color: Colors.black12.withOpacity(0.05),
      child: GridView.count(
        crossAxisCount: smallScreenGrid ? 4 : 1,
        childAspectRatio: extraLargeScreenGrid
            ? 1.0
            : largeScreenGrid
                ? 1.0
                : smallScreenGrid
                    ? 1.0
                    : tabScreenGrid
                        ? 2.6
                        : 1.6,
        mainAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
        crossAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [

                    Container(
                      padding: EdgeInsets.only(left: 05.0, top: 08.0),
                      child: Text(
                        'JH Trading',
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.indigo[600],
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 30.0),
                  child: Row(
                    children: [
                      Icon(AntIcons.mail_outline,
                          color: Colors.grey, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          'support@jhtrading.com',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 20.0),
                  child: Row(
                    children: [
                      Icon(FeatherIcons.phone, color: Colors.grey, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          '+032 309 830987',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 20.0),
                  child: Row(
                    children: [
                      Icon(Ionicons.logo_whatsapp,
                          color: Colors.grey, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          '032 309 830987',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 20.0),
                  child: Row(
                    children: [
                      Icon(FeatherIcons.rotateCw,
                          color: Colors.grey, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          '30 Days return',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, top: 20.0),
                  child: Row(
                    children: [
                      Icon(FeatherIcons.truck, color: Colors.grey, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          'Free Shipping',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 15.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 42.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Men's Fashion",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 22.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Shoes',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 22.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Watches',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 22.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Women's Fashion",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 22.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Sandals',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 15.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 42.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'About Us',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 22.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Terms & Conditions',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 22.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Return & Exchanges',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 20.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Support',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 20.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Privacy & Policy',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 15.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Join us',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 42.0),
                  child: Row(
                    children: [
                      Icon(AntIcons.facebook, color: Colors.indigo, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          'Facebook',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 20.0),
                  child: Row(
                    children: [
                      Icon(AntIcons.twitter_outline,
                          color: Colors.blue, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          'Twitter',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 20.0),
                  child: Row(
                    children: [
                      Icon(AntIcons.linkedin, color: Colors.indigo, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          'Linkedin',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 20.0),
                  child: Row(
                    children: [
                      Icon(AntIcons.youtube, color: Colors.red, size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          'Youtube',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 08.0, top: 20.0),
                  child: Row(
                    children: [
                      Icon(AntIcons.instagram,
                          color: Colors.purple[300], size: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 05.0),
                        child: Text(
                          'Instagram',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
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
