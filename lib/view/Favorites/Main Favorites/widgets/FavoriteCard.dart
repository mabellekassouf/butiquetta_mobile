import 'package:flutter/material.dart';

import 'favorite.dart';

class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    Key? key,
    required this.card,
  }) : super(key: key);
  final Cart card;

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 80,
                  child: Theme(
                    data: ThemeData(
                      unselectedWidgetColor: Color.fromRGBO(85, 115, 116, 1),
                    ),
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                        borderRadius: BorderRadius.circular(360),
                      ),
                      checkColor: Colors.white,
                      activeColor: Color.fromRGBO(85, 115, 116, 1),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Image.asset(widget.card.product.images[0]),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5,),
                  Text("${widget.card.product.price}\$",
                      style: TextStyle(
                        fontFamily: 'Geomanist',
                        fontSize: 16,
                        color: Color.fromRGBO(180, 187, 197, 1),
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Text.rich(
                    TextSpan(
                      text: widget.card.product.name,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: 'Geomanist',
                      ),
                    ),
                    maxLines: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text.rich(
                    TextSpan(
                      text: "" + widget.card.product.color + " ",
                      style: TextStyle(
                        color: Color.fromRGBO(180, 187, 197, 1),
                        fontSize: 13,
                        fontFamily: 'Geomanist',
                      ),
                      children: [
                        TextSpan(
                          text: " |  " + widget.card.product.size,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Move To Bag',
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
                        borderRadius: BorderRadius.circular(5), // <-- Radius
                      ),
                    ),
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
      ],
    );
  }
}
