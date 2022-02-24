import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'FavoriteCard.dart';
import 'favorite.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: DemoCart.length,
        itemBuilder: (context, index) => Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Dismissible(
                key: Key(DemoCart[index].product.id.toString()),
                direction: DismissDirection.endToStart,
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
                onDismissed: (direction) {
                  setState(() {
                    DemoCart.removeAt(index);
                  });
                },
                child: FavoriteCard(
                  card: DemoCart[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
