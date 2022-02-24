import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/ListFavorite.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62.0),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "My Saved Items",
            style: TextStyle(
                color: Colors.black, fontFamily: 'Valencia', fontSize: 25),
          ),
          actions: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 5,
                end: 20,
              ),
              child: Badge(
                position: BadgePosition.topEnd(top: 10),
                badgeColor: Color.fromRGBO(85, 115, 116, 1),
                badgeContent: Text(
                  '1',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset(
                    'assets/icons/icon_cart.svg',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: width,
        child: Column(
          children: [
            Row(
              children: [
                pressed
                    ? Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'MOVE TO BAG',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontFamily: 'Geomanist',
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(85, 115, 116, 1),
                            side: BorderSide(
                              color: Color.fromRGBO(85, 115, 116, 1),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            pressed = !pressed;
                          });
                        },
                        child: Text(
                          'CANCEL',
                          style: TextStyle(
                            color: Color.fromRGBO(85, 115, 116, 1),
                            fontSize: 12,
                            fontFamily: 'Geomanist',
                          ),
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
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Container(
                            height: 15,
                            width: 15,
                            color: Colors.transparent,
                            child: SvgPicture.asset(
                                'assets/icons/icon_trash.svg'),
                          ),
                          label: Text(
                            "DELETE",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w300),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(239, 216, 203, 1),
                            side: BorderSide(
                              color: Color.fromRGBO(239, 216, 203, 1),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ), //label text
                        ),
                      ),
                    ],
                  ),
                )
                    : Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        pressed = true;
                      });
                    },
                    child: Text(
                      'SELECT',
                      style: TextStyle(
                        color: Color.fromRGBO(85, 115, 116, 1),
                        fontSize: 12,
                        fontFamily: 'Geomanist',
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(
                        color: Color.fromRGBO(85, 115, 116, 1),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(5), // <-- Radius
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Text(
                    "250 items",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Geomanist',
                      fontSize: 12,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text("Recently added",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Geomanist',
                        fontSize: 12,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/icons/icon_dropdownarrow.svg',
                    ),
                  ),
                )
              ],
            ),
            FavoriteList(),
          ],
        ),
      ),
    );
  }
}
