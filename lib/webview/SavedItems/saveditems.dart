import 'package:butiquetta_mobile/webview/widgets/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SavedItems extends StatefulWidget {
  const SavedItems({Key? key}) : super(key: key);

  @override
  _SavedItemsState createState() => _SavedItemsState();
}

class _SavedItemsState extends State<SavedItems> {
  bool pressed = false;
  bool checked = false;
  List saveditems = [
    {
      "image": "assets/images/image_watch.png",
      "name": "Product name",
      "price": 150.00,
    },
    {
      "image": "assets/images/image_watch.png",
      "name": "Product name",
      "price": 150.00,
    },
    {
      "image": "assets/images/image_watch.png",
      "name": "Product name",
      "price": 150.00,
    },
    {
      "image": "assets/images/image_bag.png",
      "name": "Product name",
      "price": 150.00,
    },
    {
      "image": "assets/images/image_bag.png",
      "name": "Product name",
      "price": 150.00,
    },
    {
      "image": "assets/images/image_bag.png",
      "name": "Product name",
      "price": 150.00,
    },
    {
      "image": "assets/images/image_bag.png",
      "name": "Product name",
      "price": 150.00,
    },
    {
      "image": "assets/images/image_bag.png",
      "name": "Product name",
      "price": 150.00,
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
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        pressed
                            ? Text('SELECT')
                            : Text(
                                'SAVED ITEMS',
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
                                              'assets/icons/carticon.svg',
                                            ),
                                          ),
                                          label: Text(
                                            "MOVE TO CART",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w300),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary:
                                                Color.fromRGBO(85, 115, 116, 1),
                                            side: BorderSide(
                                              color: Color.fromRGBO(
                                                  85, 115, 116, 1),
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
                                              color: Color.fromRGBO(
                                                  85, 115, 116, 1),
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
                                              color: Color.fromRGBO(
                                                  85, 115, 116, 1),
                                              fontSize: 12,
                                              fontFamily: 'Geomanist',
                                            ),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0xffF3F4F6),
                                            side: BorderSide(
                                              color: Color.fromRGBO(
                                                  85, 115, 116, 1),
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      5), // <-- Radius
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                child: IconButton(
                                    onPressed: () async {
                                      return await showDialog<void>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return StatefulBuilder(
                                              builder: (context, setState) {
                                            return AlertDialog(
                                              contentPadding: EdgeInsets.zero,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              25.0))),
                                              content: Container(
                                                height: height * 0.44,
                                                width: width * 0.9,
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: width * 0.03),
                                                      child: Row(
                                                        children: [
                                                          Theme(
                                                            data: ThemeData(
                                                              unselectedWidgetColor:
                                                                  Colors.white,
                                                            ),
                                                            child: Checkbox(
                                                              onChanged: (bool? changed){},
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                side: BorderSide
                                                                    .none,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              checkColor:
                                                                  Colors.white,
                                                              activeColor: Color(
                                                                  0xff557374),
                                                              value: false,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Recently Added",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontFamily:
                                                                    'Geomanist',
                                                                fontSize: 14),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      color: Color(0xffE1E1E1),
                                                      thickness: 1,
                                                      height: 1,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: width * 0.03),
                                                      child: Row(
                                                        children: [
                                                          Theme(
                                                            data: ThemeData(
                                                              unselectedWidgetColor:
                                                                  Colors.white,
                                                            ),
                                                            child: Checkbox(
                                                              onChanged: (bool? changed){},
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                side: BorderSide
                                                                    .none,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              checkColor:
                                                                  Colors.white,
                                                              activeColor: Color(
                                                                  0xff557374),
                                                              value: false,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Price low to high",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontFamily:
                                                                    'Geomanist',
                                                                fontSize: 14),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      color: Color(0xffE1E1E1),
                                                      thickness: 1,
                                                      height: 1,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: width * 0.03),
                                                      child: Row(
                                                        children: [
                                                          Theme(
                                                            data: ThemeData(
                                                              unselectedWidgetColor:
                                                                  Colors.white,
                                                            ),
                                                            child: Checkbox(
                                                              onChanged: (bool? changed){},
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                side: BorderSide
                                                                    .none,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              checkColor:
                                                                  Colors.white,
                                                              activeColor: Color(
                                                                  0xff557374),
                                                              value: false,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Price high to low",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontFamily:
                                                                    'Geomanist',
                                                                fontSize: 14),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      color: Color(0xffE1E1E1),
                                                      thickness: 1,
                                                      height: 1,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: width * 0.03),
                                                      child: Row(
                                                        children: [
                                                          Theme(
                                                            data: ThemeData(
                                                              unselectedWidgetColor:
                                                                  Colors.white,
                                                            ),
                                                            child: Checkbox(
                                                              onChanged: (bool? changed){},
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                side: BorderSide
                                                                    .none,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              checkColor:
                                                                  Colors.white,
                                                              activeColor: Color(
                                                                  0xff557374),
                                                              value: false,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Stock level (fewest items left)",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontFamily:
                                                                    'Geomanist',
                                                                fontSize: 12),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      color: Color(0xffE1E1E1),
                                                      thickness: 1,
                                                      height: 1,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: width * 0.03),
                                                      child: Row(
                                                        children: [
                                                          Theme(
                                                            data: ThemeData(
                                                              unselectedWidgetColor:
                                                                  Colors.white,
                                                            ),
                                                            child: Checkbox(
                                                              onChanged: (bool? changed){},
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                side: BorderSide
                                                                    .none,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              checkColor:
                                                                  Colors.white,
                                                              activeColor: Color(
                                                                  0xff557374),
                                                              value: false,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Name A-Z",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontFamily:
                                                                    'Geomanist',
                                                                fontSize: 14),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    Divider(
                                                      color: Color(0xffE1E1E1),
                                                      thickness: 1,
                                                      height: 1,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: width * 0.03),
                                                      child: Row(
                                                        children: [
                                                          Theme(
                                                            data: ThemeData(
                                                              unselectedWidgetColor:
                                                                  Colors.white,
                                                            ),
                                                            child: Checkbox(
                                                              onChanged: (bool? changed){},
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                side: BorderSide
                                                                    .none,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              checkColor:
                                                                  Colors.white,
                                                              activeColor: Color(
                                                                  0xff557374),
                                                              value: false,
                                                            ),
                                                          ),
                                                          Text(
                                                            "Name Z-A",
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontFamily:
                                                                    'Geomanist',
                                                                fontSize: 14),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                        },
                                      );
                                    },
                                    icon: Image.asset(
                                        'assets/icons/icon_sort.png'))),
                            Text(
                              "Sort",
                              style: TextStyle(
                                  fontSize: 10, fontFamily: 'Geomanist'),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        pressed
                            ? Text(
                                "3 items selected",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Geomanist',
                                    fontSize: 12),
                              )
                            : Text(
                                "250 items",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Geomanist',
                                    fontSize: 12),
                              )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 1,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: saveditems.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Card(
                              child: Column(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1.5,
                                    child: Image.asset(
                                      saveditems[index]["image"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          saveditems[index]["name"],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10,
                                              fontFamily: 'Geomanist'),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 10.0),
                                          child: SizedBox(
                                            height: 20,
                                            width: 20,
                                            child: GestureDetector(
                                              onTap: () {},
                                              child: SvgPicture.asset(
                                                'assets/icons/addcart.svg',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          "${saveditems[index]["price"].toString()}\$",
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  180, 187, 197, 1),
                                              fontSize: 10,
                                              fontFamily: 'Geomanist'),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                // Spacer(),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 5, top: 10),
                                    child: Container(
                                      height: 10,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: 3,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 2.0),
                                              child: Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(40),
                                                  ),
                                                  color: Color(0xff4E6353),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                pressed
                                    ? SizedBox(
                                        width: 30,
                                        child: Theme(
                                          data: ThemeData(
                                            unselectedWidgetColor:
                                                Color.fromRGBO(85, 115, 116, 1),
                                          ),
                                          child: Checkbox(
                                            shape: RoundedRectangleBorder(
                                              side: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(360),
                                            ),
                                            checkColor: Colors.white,
                                            activeColor:
                                                Color.fromRGBO(85, 115, 116, 1),
                                            value: checked,
                                            onChanged: (bool? value) {
                                              setState(() {
                                                checked = value!;
                                              });
                                            },
                                          ),
                                        ),
                                      )
                                    : Container(),
                                //Spacer(),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
