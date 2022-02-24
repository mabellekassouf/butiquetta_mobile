import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/webview/productPage/item_page.dart';
import 'package:butiquetta_mobile/webview/widgets/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WebProductPage extends StatefulWidget {
  const WebProductPage({Key? key}) : super(key: key);

  @override
  _WebProductPageState createState() => _WebProductPageState();
}

class _WebProductPageState extends State<WebProductPage> {
  bool pressed = false;
  bool checked = false;
  RangeValues _currentRangeValues = const RangeValues(0, 5000);
  String slidervalue = "0";
  List<Map<String, String>> listAllSubCategory = [];
  List<Map<String, String>> listAllCategory = [];
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
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Products - Women - Accessories - Bags - Branded HandBags',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Geomanist',
                              fontSize: 10),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
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
                                          backgroundColor: Colors.transparent,
                                          scrollable: true,
                                          // contentPadding: EdgeInsets.only(left: width*0.6),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25.0))),
                                          content: Container(
                                            height: height * 0.73,
                                            width: width * 0.3,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                            ),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  SingleChildScrollView(
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: height * 0.04,
                                                        ),
                                                        ExpansionPanelList(
                                                          expansionCallback:
                                                              (index, isOpen) {
                                                            setState(() {
                                                              // _filtringSearchResult.isOpen[index] = !isOpen;
                                                            });
                                                          },
                                                          children: [
                                                            ExpansionPanel(
                                                              headerBuilder:
                                                                  (BuildContext
                                                                          context,
                                                                      bool
                                                                          isOpen) {
                                                                return ListTile(
                                                                  title: Text(
                                                                    'GENDER',
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Geomanist',
                                                                        fontSize:
                                                                            14),
                                                                  ),
                                                                );
                                                              },
                                                              body: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: 15,
                                                                    bottom:
                                                                        height *
                                                                            0.03),
                                                                child:
                                                                    FilterTab(
                                                                  data:
                                                                      listAllCategory,
                                                                  type:
                                                                      "categorie",
                                                                ),
                                                              ),
                                                              //isExpanded: _filtringSearchResult.isOpen[0],
                                                            ),
                                                            ExpansionPanel(
                                                              headerBuilder:
                                                                  (BuildContext
                                                                          context,
                                                                      bool
                                                                          isExpanded) {
                                                                return ListTile(
                                                                  title: Text(
                                                                    'CATEGORIES',
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Geomanist',
                                                                        fontSize:
                                                                            14),
                                                                  ),
                                                                  trailing:
                                                                      Text(
                                                                    "(" +
                                                                        "3" +
                                                                        ") selected",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          12,
                                                                      fontFamily:
                                                                          'Geomanist',
                                                                      color: Color(
                                                                          0xff9FACBD),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                              body: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: 15,
                                                                    bottom:
                                                                        height *
                                                                            0.03),
                                                                child: FilterTab(
                                                                    data:
                                                                        listAllSubCategory,
                                                                    type:
                                                                        "subcategorie"),
                                                              ),

                                                              //isExpanded: _filtringSearchResult.isOpen[1],
                                                            ),
                                                            ExpansionPanel(
                                                              headerBuilder:
                                                                  (BuildContext
                                                                          context,
                                                                      bool
                                                                          isExpanded) {
                                                                return ListTile(
                                                                  title: Text(
                                                                    'COLOR',
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Geomanist',
                                                                        fontSize:
                                                                            14),
                                                                  ),
                                                                );
                                                              },
                                                              body: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: 15,
                                                                    bottom:
                                                                        height *
                                                                            0.03),
                                                                child: FilterTab(
                                                                    data: [
                                                                      {
                                                                        "tag_name":
                                                                            "Black",
                                                                        "tag_id":
                                                                            "black",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Blue",
                                                                        "tag_id":
                                                                            "blue",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Brown",
                                                                        "tag_id":
                                                                            "brown",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Clear",
                                                                        "tag_id":
                                                                            "clear",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Copper",
                                                                        "tag_id":
                                                                            "copper",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Gold",
                                                                        "tag_id":
                                                                            "gold",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Green",
                                                                        "tag_id":
                                                                            "green",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Grey",
                                                                        "tag_id":
                                                                            "grey",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Multi",
                                                                        "tag_id":
                                                                            "multi",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Navy",
                                                                        "tag_id":
                                                                            "navy",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Orange",
                                                                        "tag_id":
                                                                            "orange",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Pink",
                                                                        "tag_id":
                                                                            "pink",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Purple",
                                                                        "tag_id":
                                                                            "purple",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Red",
                                                                        "tag_id":
                                                                            "red",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Silver",
                                                                        "tag_id":
                                                                            "silver",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "White",
                                                                        "tag_id":
                                                                            "white",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Yellow",
                                                                        "tag_id":
                                                                            "yellow",
                                                                      },
                                                                    ],
                                                                    type:
                                                                        "color"),
                                                              ),

                                                              // isExpanded: _filtringSearchResult.isOpen[2],
                                                            ),
                                                            ExpansionPanel(
                                                              headerBuilder:
                                                                  (BuildContext
                                                                          context,
                                                                      bool
                                                                          isExpanded) {
                                                                return ListTile(
                                                                  title: Text(
                                                                    'SIZE',
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Geomanist',
                                                                        fontSize:
                                                                            14),
                                                                  ),
                                                                );
                                                              },
                                                              body: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: 15,
                                                                    bottom:
                                                                        height *
                                                                            0.03),
                                                                child: FilterTab(
                                                                    data: [
                                                                      {
                                                                        "tag_name":
                                                                            "XXS",
                                                                        "tag_id":
                                                                            "XXS",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "XS",
                                                                        "tag_id":
                                                                            "XS",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Small",
                                                                        "tag_id":
                                                                            "Small",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Medium",
                                                                        "tag_id":
                                                                            "Medium",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "Large",
                                                                        "tag_id":
                                                                            "Large",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "XL",
                                                                        "tag_id":
                                                                            "XL",
                                                                      },
                                                                      {
                                                                        "tag_name":
                                                                            "XXL",
                                                                        "tag_id":
                                                                            "XXL",
                                                                      },
                                                                    ],
                                                                    type:
                                                                        "size"),
                                                              ),

                                                              //isExpanded: _filtringSearchResult.isOpen[3],
                                                            ),
                                                            ExpansionPanel(
                                                              headerBuilder:
                                                                  (BuildContext
                                                                          context,
                                                                      bool
                                                                          isExpanded) {
                                                                return ListTile(
                                                                  title: Text(
                                                                    'MATERIAL',
                                                                    style: TextStyle(
                                                                        fontFamily:
                                                                            'Geomanist',
                                                                        fontSize:
                                                                            14),
                                                                  ),
                                                                );
                                                              },
                                                              body: Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: 15,
                                                                    bottom:
                                                                        height *
                                                                            0.03),
                                                                child:
                                                                    FilterTab(
                                                                  data: [
                                                                    {
                                                                      "tag_name":
                                                                          "Cotton",
                                                                      "tag_id":
                                                                          "Cotton",
                                                                    },
                                                                    {
                                                                      "tag_name":
                                                                          "Denim",
                                                                      "tag_id":
                                                                          "Denim",
                                                                    },
                                                                    {
                                                                      "tag_name":
                                                                          "Lace",
                                                                      "tag_id":
                                                                          "Lace",
                                                                    },
                                                                    {
                                                                      "tag_name":
                                                                          "Leather",
                                                                      "tag_id":
                                                                          "Leather",
                                                                    },
                                                                    {
                                                                      "tag_name":
                                                                          "Linen",
                                                                      "tag_id":
                                                                          "Linen",
                                                                    },
                                                                    {
                                                                      "tag_name":
                                                                          "Silk",
                                                                      "tag_id":
                                                                          "Silk",
                                                                    },
                                                                    {
                                                                      "tag_name":
                                                                          "Suede",
                                                                      "tag_id":
                                                                          "Suede",
                                                                    },
                                                                    {
                                                                      "tag_name":
                                                                          "Wool",
                                                                      "tag_id":
                                                                          "Wool",
                                                                    },
                                                                    {
                                                                      "tag_name":
                                                                          "Other",
                                                                      "tag_id":
                                                                          "Other",
                                                                    },
                                                                  ],
                                                                  type:
                                                                      "material",
                                                                ),
                                                              ),

                                                              //isExpanded: _filtringSearchResult.isOpen[4],
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          color: Colors.white,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Divider(
                                                                color: Color(
                                                                    0xffE1E1E1),
                                                                thickness: 1,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    left: 15,
                                                                    top: height *
                                                                        0.02),
                                                                child: Text(
                                                                  'PRICE RANGE',
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Geomanist',
                                                                      fontSize:
                                                                          14),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: height *
                                                                    0.03,
                                                              ),
                                                              SliderTheme(
                                                                data: SliderTheme.of(
                                                                        context)
                                                                    .copyWith(
                                                                  valueIndicatorColor:
                                                                      Colors
                                                                          .transparent,
                                                                  valueIndicatorTextStyle: TextStyle(
                                                                      color: Colors
                                                                          .black,
                                                                      fontFamily:
                                                                          'Geomanist'),
                                                                  showValueIndicator:
                                                                      ShowValueIndicator
                                                                          .always,
                                                                ),
                                                                child:
                                                                    RangeSlider(
                                                                  activeColor:
                                                                      Color(
                                                                          0xff567374),
                                                                  inactiveColor: Color(
                                                                          0xff567374)
                                                                      .withOpacity(
                                                                          0.33),
                                                                  values:
                                                                      _currentRangeValues,
                                                                  max: 7000,
                                                                  divisions:
                                                                      7000,
                                                                  labels:
                                                                      RangeLabels(
                                                                    _currentRangeValues
                                                                            .start
                                                                            .round()
                                                                            .toString() +
                                                                        r"$",
                                                                    _currentRangeValues
                                                                            .end
                                                                            .round()
                                                                            .toString() +
                                                                        r"$",
                                                                  ),
                                                                  onChanged:
                                                                      (RangeValues
                                                                          values) {
                                                                    setState(
                                                                        () {
                                                                      _currentRangeValues =
                                                                          values;
                                                                    });
                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      });
                                    },
                                  );
                                },
                                icon:
                                    Image.asset('assets/icons/icon_filter.png'),
                              ),
                            ),
                            Text(
                              "Filter",
                              style: TextStyle(
                                  fontSize: 10, fontFamily: 'Geomanist'),
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
                                              backgroundColor:
                                                  Colors.transparent,
                                              // contentPadding: EdgeInsets.only(left: width*0.7,bottom: height*0.25),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              25.0))),
                                              content: Container(
                                                height: height * 0.44,
                                                width: width * 0.4,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
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
                                                              onChanged: (bool?
                                                                  changed) {},
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
                                                              onChanged: (bool?
                                                                  changed) {},
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
                                                              onChanged: (bool?
                                                                  changed) {},
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
                                                              onChanged: (bool?
                                                                  changed) {},
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
                                                              onChanged: (bool?
                                                                  changed) {},
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
                                                              onChanged: (bool?
                                                                  changed) {},
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
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: height * 0.75,
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
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
                              GestureDetector(
                                onTap: () {
                                  changeScreen(context, WebItemPage());
                                },
                                child: Card(
                                  color: Color(0xffF3F4F6),
                                  elevation: 0,
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
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
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
                                                height: 18,
                                                width: 18,
                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: SvgPicture.asset(
                                                    'assets/icons/icon_favorites.svg',
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 5.0),
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
                              ),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  height: 14,
                                  width: 14,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(40),
                                    ),
                                    color: Color(0xff4E6353),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
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
