import 'package:butiquetta_mobile/webview/widgets/navigation_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class WebItemPage extends StatefulWidget {
  const WebItemPage({Key? key}) : super(key: key);

  @override
  _WebItemPageState createState() => _WebItemPageState();
}

class _WebItemPageState extends State<WebItemPage> {
  int quantityCounter = 0;
  int _current = 0;
  bool _selectedColor = false;
  List imgList = [
    'assets/images/image_product_bag.png',
    'assets/images/image_product_bag.png',
    'assets/images/image_product_bag.png',
    'assets/images/image_product_bag.png',
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF3F4F6),
        body:  Column(
        children: [
        NavigationBarWeb(),
        Container(
          width: width,
          child: Row(
            children: [
              Container(
                height: height*0.9,
                width: width*0.5,
                color:Color(0xffF3F4F6),
                child: Stack(
                  children: [
                     CarouselSlider(
                        options: CarouselOptions(
                          height: height*0.9,
                          viewportFraction: 1,
                          initialPage: 0,
                          autoPlay: true,
                          reverse: false,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, CarouselPagechanged) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                        items:imgList.map((imgUrl) {
                          return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  width: width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Image.asset(
                                    imgUrl,
                                    fit: BoxFit.cover,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                );
                              });
                        }).toList(),
                    ),
                    Positioned(
                      top: height*0.8,
                      right: width*0.21,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: map<Widget>(
                            imgList, (index, url) {
                          return Container(
                            width: 8,
                            height: 8,
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            decoration: BoxDecoration(shape: BoxShape.circle,
                                color: _current == index
                                    ? Colors.white.withOpacity(0.70)
                                    : Colors.grey.withOpacity(0.70)),
                          );
                        }
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width*0.5,
                height: height*0.9,
                padding: EdgeInsets.symmetric(horizontal: width*0.05, vertical: height*0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("BUTIQUETA",
                      style: TextStyle(
                        fontFamily: 'Laomn',
                        fontSize: 16,
                      ),),
                    Text("Luxury Bag in Tan Color - Model Summer Collection 2022",
                      style: TextStyle(
                        fontFamily: 'Valencia',
                        fontSize: 30,
                      ),),
                    Text("LUXURY BAGS AND ACCESSORIES",
                      style: TextStyle(
                        fontFamily: 'Geomanist',
                        fontSize: 12,
                        color: Color(0xff707070),
                      ),),
                    Row(
                      children: [
                        Text("\$     " + "1500",
                          style: TextStyle(
                            fontFamily: 'Valencia',
                            fontSize: 25,
                            color: Color(0xff557374),
                          ),),
                        Container(width: width*0.01,),
                        Text("IN STOCK",
                          style: TextStyle(
                            fontFamily: 'Geomanist',
                            fontSize: 12,
                            color: Color(0xff707070),
                          ),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("COLORS",
                          style: TextStyle(
                            fontFamily: 'Geomanist',
                            fontSize: 12,
                            color: Color(0xff707070),
                          ),),
                        Text("QUANTITY",
                          style: TextStyle(
                            fontFamily: 'Geomanist',
                            fontSize: 12,
                            color: Color(0xff707070),
                          ),),
                        Container(),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: height*0.08,
                          width: width*0.19,
                          child: Scrollbar(
                            isAlwaysShown: true,
                            child: GridView.builder(
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.symmetric(horizontal: height*0.01),
                              physics: AlwaysScrollableScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3),
                              //controller: _scrollController,
                              itemCount: 6,
                              itemBuilder: (BuildContext context, int i) {
                                return  GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedColor=!_selectedColor;
                                    });
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 20),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: (_selectedColor==true)?40:30,
                                          width: (_selectedColor==true)?40:30,
                                          // width: width / 2,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(40),
                                            ),
                                            color: Color(0xff4E6353),
                                            boxShadow: [
                                              (_selectedColor==true)?BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 2,
                                                blurRadius: 7,
                                                offset: Offset(0, 2), // changes position of shadow
                                              ):BoxShadow(),
                                            ],
                                          ),
                                        ),
                                        Text("Forest Green",style: TextStyle(color: Colors.black, fontSize: 10,fontFamily: 'Geomanist'),),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Container(width: width*0.01,),
                        Container(
                          color: Colors.white,
                          child: Row(
                            children: [
                              Container(
                                width:width*0.03,
                                  child: Center(child: Text(quantityCounter.toString()))),
                              Column(
                              children: [
                                Container(
                                  width:width*0.03,
                                  height: height*0.04,
                                  child: TextButton(
                                      child: Text("-",
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),),
                                      style: TextButton.styleFrom(
                                          backgroundColor: Color(0xffF3F4F6),
                                          side: BorderSide(
                                              color: Color(0xff707070)
                                          ),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(0),
                                        ),
                                      ),
                                      onPressed: (){
                                        if(quantityCounter!=0) {
                                          setState(() {
                                            quantityCounter--;
                                          });
                                        }
                                      }
                                  ),
                                ),
                                Container(
                                  width:width*0.03,
                                  height: height*0.04,
                                  child: TextButton(
                                      child: Text("+",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),),
                                      style: TextButton.styleFrom(
                                        backgroundColor: Color(0xffF3F4F6),
                                        side: BorderSide(
                                          color: Color(0xff707070)
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(0),
                                        ),
                                      ),

                                      onPressed: (){
                                        setState(() {
                                          quantityCounter++;
                                        });
                                      }
                                  ),
                                )
                              ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: height*0.06,
                          width: width*0.18,
                          child: ElevatedButton(
                            onPressed: () async {

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    "assets/icons/icon_cart.svg",
                                color: Colors.white),
                                Text("ADD TO CART",
                                  style: TextStyle(
                                    fontFamily: 'Geomanist',
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              primary: Color(0xff557374),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: height*0.06,
                          width: width*0.18,
                          child: ElevatedButton(
                            onPressed: () async {

                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                    "assets/icons/icon_favorites.svg",
                                    color:Color(0XFF76907A)),
                                Text("ADD TO FAVORITES",
                                  style: TextStyle(
                                    fontFamily: 'Geomanist',
                                    fontSize: 16,
                                    color: Color(0XFF76907A),
                                  ),
                                ),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                              elevation: 10,
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        ]
        ),
    );
  }
}
