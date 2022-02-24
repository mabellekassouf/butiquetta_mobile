import 'package:butiquetta_mobile/webview/widgets/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class WebCartView extends StatefulWidget {
  const WebCartView({Key? key}) : super(key: key);

  @override
  _WebCartViewState createState() => _WebCartViewState();
}

class _WebCartViewState extends State<WebCartView> {
  bool pressed = false;
  final TextEditingController promoFieldController = TextEditingController();
  int _itemCount = 0;
  List cartproducts = [
    {
      "image": "assets/images/image_watch.png",
      "size": "size",
      "color": "color",
      "price": 250,
      "name": "Insert product name here",
    },
    {
      "image": "assets/images/image_watch.png",
      "size": "size",
      "color": "color",
      "price": 250,
      "name": "Insert product name here",
    }
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF3F4F6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NavigationBarWeb(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'MY CART',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Valencia',
                            fontSize: 20),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          pressed
                              ? Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: ElevatedButton.icon(
                                        onPressed: () {},
                                        icon: Container(
                                          height: 15,
                                          width: 15,
                                          color: Colors.transparent,
                                          child: SvgPicture.asset(
                                            'assets/icons/favoritesicon.svg',
                                          ),
                                        ),
                                        label: Text(
                                          "MOVE TO FAVORITES",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w300),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary:
                                              Color.fromRGBO(85, 115, 116, 1),
                                          side: BorderSide(
                                            color:
                                                Color.fromRGBO(85, 115, 116, 1),
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text(
                                          'DELETE',
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(85, 115, 116, 1),
                                            fontSize: 12,
                                            fontFamily: 'Geomanist',
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color.fromRGBO(
                                              239, 216, 203, 1.0),
                                          side: BorderSide(
                                            color: Color.fromRGBO(
                                                239, 216, 203, 1.0),
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5),
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
                                          pressed = false;
                                        });
                                      },
                                      child: Text(
                                        'CANCEL',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(85, 115, 116, 1),
                                          fontSize: 12,
                                          fontFamily: 'Geomanist',
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xffF3F4F6),
                                        side: BorderSide(
                                          color:
                                              Color.fromRGBO(85, 115, 116, 1),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  children: [
                                    Padding(
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
                                            color:
                                                Color.fromRGBO(85, 115, 116, 1),
                                            fontSize: 12,
                                            fontFamily: 'Geomanist',
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffF3F4F6),
                                          side: BorderSide(
                                            color:
                                                Color.fromRGBO(85, 115, 116, 1),
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                5), // <-- Radius
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "5 items",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Geomanist',
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: width * 0.7,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: cartproducts.length,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Row(
                                                children: [
                                                  pressed
                                                      ? SizedBox(
                                                          width: 80,
                                                          child: Theme(
                                                            data: ThemeData(
                                                              unselectedWidgetColor:
                                                                  Color
                                                                      .fromRGBO(
                                                                          85,
                                                                          115,
                                                                          116,
                                                                          1),
                                                            ),
                                                            child: Checkbox(
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                side: BorderSide
                                                                    .none,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            360),
                                                              ),
                                                              checkColor:
                                                                  Colors.white,
                                                              activeColor: Color
                                                                  .fromRGBO(
                                                                      85,
                                                                      115,
                                                                      116,
                                                                      1),
                                                              value: false,
                                                              onChanged: (bool?
                                                                  value) {},
                                                            ),
                                                          ),
                                                        )
                                                      : Container(),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Container(
                                                    height: 130,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white),
                                                    child: AspectRatio(
                                                        aspectRatio: 0.55,
                                                        child: Image.asset(
                                                            "assets/images/image_watch.png")),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                              cartproducts[
                                                                      index]
                                                                  ["name"],
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    'Geomanist',
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .black,
                                                              )),
                                                        ),
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                spreadRadius: 1,
                                                                blurRadius: 5,
                                                                offset: Offset(
                                                                    0, 7),
                                                              ),
                                                            ],
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        360),
                                                          ),
                                                          height: 25,
                                                          width: 93,
                                                          child: Row(
                                                            children: [
                                                              _itemCount != 0
                                                                  ? IconButton(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .remove,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
                                                                      ),
                                                                      onPressed:
                                                                          () {
                                                                        setState(() =>
                                                                            _itemCount--);
                                                                      },
                                                                    )
                                                                  : IconButton(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .remove,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            12,
                                                                      ),
                                                                      onPressed:
                                                                          () {},
                                                                    ),
                                                              Text(
                                                                _itemCount
                                                                    .toString(),
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 11,
                                                                ),
                                                              ),
                                                              IconButton(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  icon:
                                                                      const Icon(
                                                                    Icons.add,
                                                                    color: Colors
                                                                        .black,
                                                                    size: 12,
                                                                  ),
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {
                                                                      _itemCount++;
                                                                    });
                                                                  }),
                                                            ],
                                                          ),
                                                        ),
                                                        Text(
                                                          "\$" +
                                                              cartproducts[
                                                                          index]
                                                                      ["price"]
                                                                  .toString(),
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Geomanist',
                                                              fontSize: 15),
                                                        ),
                                                        SizedBox(
                                                          width: 20,
                                                          child:
                                                              GestureDetector(
                                                            onTap: () {},
                                                            child: SvgPicture.asset(
                                                                "assets/Icons/icon_trash.svg"),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text.rich(
                                                      TextSpan(
                                                        text: "Size",
                                                        style: TextStyle(
                                                          color: Color.fromRGBO(
                                                              180, 187, 197, 1),
                                                          fontSize: 10,
                                                          fontFamily:
                                                              'Geomanist',
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                              text: " |  " +
                                                                  "Color",
                                                              style: TextStyle(
                                                                  fontSize: 10))
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Divider(
                                            color: Color.fromRGBO(
                                                112, 112, 112, 1),
                                            indent: 25,
                                            endIndent: 25,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                );
                              }),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Container(
                          height: 150,
                          width: width * 0.20,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(159, 176, 162, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Container(
                            height: 150,
                            width: width * 0.18,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(159, 176, 162, 1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Container(
                                        width: width * 0.11,
                                        height: height * 0.07,
                                        color: Color.fromRGBO(159, 176, 162, 1),
                                        child: TextFormField(
                                          controller: promoFieldController,
                                          decoration: InputDecoration(
                                            hintText: "Enter Promo Code",
                                            hintStyle: TextStyle(
                                              fontFamily: 'Geomanist',
                                              fontSize: 14,
                                              color: Colors.white,
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
                                            fillColor: Color.fromRGBO(
                                                159, 176, 162, 1),
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
                                    ),
                                    Container(
                                      width: width * 0.05,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text('Apply'),
                                        style: TextButton.styleFrom(
                                            primary: Colors.white,
                                            textStyle: TextStyle(
                                                fontSize: 13,
                                                fontFamily: 'Geomanist',
                                                fontWeight: FontWeight.w400)),
                                      ),
                                    ),
                                  ],
                                ),
                                /* Row(
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
                                      child: Text('price\$',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Geomanist',
                                            color: Color.fromRGBO(86, 115, 116, 1)
                                        ),),
                                    ),
                                  ],
                                ),*/
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
