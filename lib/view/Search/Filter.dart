import 'package:butiquetta_mobile/view/Search/Widgets/tabs_widget.dart';
import 'package:flutter/material.dart';
class FilterScreen extends StatefulWidget {

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<bool> _isOpen=[
    false,
    false,
    false,
    false,
    false,
  ];

  RangeValues _currentRangeValues = const RangeValues(0, 5000);

  double _currentSliderValue = 0;
  String slidervalue = "0";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xffF5F6F7),
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title:  Text(
            "Filter",
            style: TextStyle(
                fontSize: 25,
                fontFamily: 'Valencia',
                color: Colors.black
            ),),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    shadowColor: Colors.transparent,
                    primary: Color(0xffF5F6F7),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Color(0xff557374),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    )
                ),
                onPressed: (){},
                child: Text("CLEAR ALL",style: TextStyle(fontSize: 12,fontFamily: 'Geomanist',color: Color(0xff557374)),),
              ),
            ),
          ],
          backgroundColor: Color(0xffF5F6F7),
          leading: IconButton(
            icon: Image.asset('assets/icons/icon_back.png',
              height: 20,
              width: 20,),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionPanelList(
                expansionCallback: (index, isOpen) {
                  setState(() {
                    _isOpen[index] = !isOpen;
                  });
                },
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isOpen) {
                      return ListTile(
                        title: Text(
                          'GENDER',
                          style: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14
                          ),),
                      );
                    },
                    body: Padding(
                      padding: EdgeInsets.only(left: 15,bottom: height*0.03),
                      child: FilterTab(
                        data: [
                          {
                            "tag_name": "Men",
                          },
                          {
                            "tag_name": "Women",
                          },
                          {
                            "tag_name": "Children (girls)",
                          },
                          {
                            "tag_name": "Children (boys)",
                          },
                          {
                            "tag_name": "Unisex",
                          },
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[0],
                  ),
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'CATEGORIES',
                          style: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14
                          ),),
                        trailing: Text(
                          "("+"3"+") selected",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Geomanist',
                            color: Color(0xff9FACBD),
                          ),),
                      );
                    },
                    body: Padding(
                      padding: EdgeInsets.only(left: 15,bottom: height*0.03),
                      child: FilterTab(
                        data: [
                          {
                            "tag_name": "Accessories",
                          },
                          {
                            "tag_name": "Tops",
                          },
                          {
                            "tag_name": "Bottoms",
                          },
                          {
                            "tag_name": "Outwear",
                          },
                          {
                            "tag_name": "Shoes",
                          },
                          {
                            "tag_name": "Perfume",
                          },
                          {
                            "tag_name": "Skincare",
                          },
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[1],
                  ),
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'COLOR',
                          style: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14
                          ),),
                      );
                    },
                    body: Padding(
                      padding: EdgeInsets.only(left: 15,bottom: height*0.03),
                      child: FilterTab(
                        data: [
                          {
                            "tag_name": "Black",
                          },
                          {
                            "tag_name": "Blue",
                          },
                          {
                            "tag_name": "Brown",
                          },
                          {
                            "tag_name": "Clear",
                          },
                          {
                            "tag_name": "Copper",
                          },
                          {
                            "tag_name": "Gold",
                          },
                          {
                            "tag_name": "Green",
                          },
                          {
                            "tag_name": "Grey",
                          },
                          {
                            "tag_name": "Multi",
                          },
                          {
                            "tag_name": "Navy",
                          },
                          {
                            "tag_name": "Orange",
                          },
                          {
                            "tag_name": "Pink",
                          },
                          {
                            "tag_name": "Purple",
                          },
                          {
                            "tag_name": "Red",
                          },
                          {
                            "tag_name": "Silver",
                          },
                          {
                            "tag_name": "White",
                          },
                          {
                            "tag_name": "Yellow",
                          },
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[2],
                  ),
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'SIZE',
                          style: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14
                          ),),
                      );
                    },
                    body: Padding(
                      padding: EdgeInsets.only(left: 15,bottom: height*0.03),
                      child: FilterTab(
                        data: [
                          {
                            "tag_name": "XXS",
                          },
                          {
                            "tag_name": "XS",
                          },
                          {
                            "tag_name": "Small",
                          },
                          {
                            "tag_name": "Medium",
                          },
                          {
                            "tag_name": "Large",
                          },
                          {
                            "tag_name": "XL",
                          },
                          {
                            "tag_name": "XXL",
                          },
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[3],
                  ),
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        title: Text(
                          'MATERIAL',
                          style: TextStyle(
                              fontFamily: 'Geomanist',
                              fontSize: 14
                          ),),
                      );
                    },
                    body: Padding(
                      padding: EdgeInsets.only(left: 15,bottom: height*0.03),
                      child: FilterTab(
                        data: [
                          {
                            "tag_name": "Cotton",
                          },
                          {
                            "tag_name": "Denim",
                          },
                          {
                            "tag_name": "Lace",
                          },
                          {
                            "tag_name": "Leather",
                          },
                          {
                            "tag_name": "Linen",
                          },
                          {
                            "tag_name": "Silk",
                          },
                          {
                            "tag_name": "Suede",
                          },
                          {
                            "tag_name": "Wool",
                          },
                          {
                            "tag_name": "Other",
                          },
                        ],
                      ),
                    ),
                    isExpanded: _isOpen[4],
                  ),

                ],
              ),
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      color: Color(0xffE1E1E1),
                      thickness: 1,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15,top: height*0.02),
                      child: Text(
                        'PRICE RANGE',
                        style: TextStyle(
                            fontFamily: 'Geomanist',
                            fontSize: 14
                        ),),
                    ),
                    Container(height: height*0.05,),
                    // SliderTheme(
                    //   data: SliderTheme.of(context).copyWith(
                    //     valueIndicatorColor: Colors.transparent,
                    //     inactiveTrackColor: Color(0xff567374).withOpacity(0.33),
                    //     activeTickMarkColor:  Color(0xff567374),
                    //     inactiveTickMarkColor:  Color(0xff567374).withOpacity(0.33),
                    //     activeTrackColor:  Color(0xff567374),
                    //     thumbColor: Color(0xff567374),
                    //     overlayColor: Color(0xff567374).withOpacity(0.05),
                    //     thumbShape:
                    //     RoundSliderThumbShape(enabledThumbRadius: 10.0),
                    //     overlayShape:
                    //     RoundSliderOverlayShape(overlayRadius: 20.0),
                    //     valueIndicatorTextStyle: TextStyle(color: Colors.black,fontFamily: 'Geomanist')
                    //   ),
                    //   child: Slider(
                    //     value: _currentSliderValue,
                    //     min: 0,
                    //     max: 7000,
                    //     divisions: 7000,
                    //     label: _currentSliderValue.round().toString()+r"$",
                    //     onChanged: (double newValue) {
                    //       setState(() {
                    //         _currentSliderValue = newValue;
                    //         slidervalue = ""+newValue.toStringAsFixed(0);
                    //       });
                    //     },
                    //   ),
                    // ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        valueIndicatorColor: Colors.transparent,
                        valueIndicatorTextStyle: TextStyle(color: Colors.black,fontFamily: 'Geomanist'),
                        showValueIndicator: ShowValueIndicator.always,
                      ),
                      child: RangeSlider(
                        activeColor:  Color(0xff567374),
                        inactiveColor:  Color(0xff567374).withOpacity(0.33),
                        values: _currentRangeValues,
                        max: 7000,
                        divisions: 7000,
                        labels: RangeLabels(
                          _currentRangeValues.start.round().toString()+r"$",
                          _currentRangeValues.end.round().toString()+r"$",
                        ),
                        onChanged: (RangeValues values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
