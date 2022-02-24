import 'package:flutter/material.dart';

class AddressCard extends StatefulWidget {
  const AddressCard({Key? key,}) : super(key: key);

  @override
  _AddressCardState createState() => _AddressCardState();
}

class _AddressCardState extends State<AddressCard> {
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
              ],
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("",
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
                      text: "",
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
                      text: "",
                      style: TextStyle(
                        color: Color.fromRGBO(180, 187, 197, 1),
                        fontSize: 13,
                        fontFamily: 'Geomanist',
                      ),
                      children: [
                        TextSpan(
                          text: " |  " +"s" ,//widget.card.size[0],
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
