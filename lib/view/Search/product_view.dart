import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_progress_dialog/future_progress_dialog.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
class ProductScreen extends StatefulWidget {
bool isfavorite;
int i;

ProductScreen(this.isfavorite,this.i);
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int _current = 0;
  bool _favorite=false;
  bool _selectedSize = false;
  bool _selectedColor = false;

  List imgList = [
    'assets/images/watch.jpg',
    'assets/images/watch.jpg',
    'assets/images/watch.jpg',
    'assets/images/watch.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
@override
  void initState() {
  _favorite=widget.isfavorite;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:  AppBar(
        elevation: 0,
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
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Image.asset('assets/icons/icon_back.png',
            color: Colors.white,
            height: 20,
            width: 20,),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: height*0.45,
              viewportFraction: 1,
              initialPage: 0,
              autoPlay: false,
              reverse: false,
              enlargeCenterPage: false,
              enableInfiniteScroll: true,
              scrollDirection: Axis.vertical,
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
                      width: MediaQuery
                          .of(context)
                          .size
                          .width,
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
            top: height*0.18,
            right: width*0.02,
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(
                  imgList, (index, url) {
                return Container(
                  width: 8,
                  height: 8,
                  margin: EdgeInsets.symmetric(
                      vertical: 5, horizontal: 18),
                  decoration: BoxDecoration(shape: BoxShape.circle,
                      color: _current == index
                          ? Colors.white.withOpacity(0.70)
                          : Colors.grey.withOpacity(0.70)),
                );
              }
              ),
            ),
          ),
          Column(
            children: [
              Container(height: height*0.4,),
              Container(
                height: height*0.55,
                width: width,
                padding: EdgeInsets.symmetric(horizontal: width*0.08,vertical: height*0.01),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                        Row(
                          children: [
                            Text("Handbag",
                            style: TextStyle(
                              fontSize: 22,
                              fontFamily: 'Valencia'
                            ),),
                            Spacer(),
                            IconButton(
                              padding: EdgeInsets.zero,
                                onPressed: () async {

                                if(widget.isfavorite==true) {
                                  await Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      backgroundColor: Color(0xffEFD8CB),
                                      content:Container(
                                        height: height*0.06,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text(
                                                "Item successfully added to Wishlist",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Geomanist'
                                                ),),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                },
                                icon: (!_favorite)?SvgPicture.asset(
                                  'assets/icons/icon_favorites.svg',
                                  color: Colors.black,
                                  width: width*0.03,
                                  height: height*0.03,):SvgPicture.asset(
                                  'assets/icons/icon_favorite_true.svg',
                                  color: Colors.black,
                                  width: width*0.03,
                                  height: height*0.03,),
                            )
                          ],
                        ),
                        Text("400\$",
                        style: TextStyle(
                          fontFamily: 'Geomanist',
                          fontSize: 17,
                          color: Color(0xffB4BBC5),
                        ),),

                    Container(height: height*0.01,),
                    Text("This item is a handbag",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'Geomanist'
                    ),),
                    Container(height: height*0.01,),
                    Text("Size",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Geomanist'
                      ),),
                    Container(
                      height: height*0.08,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: height*0.01),
                        physics: AlwaysScrollableScrollPhysics(),
                        //controller: _scrollController,
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int i) {
                          return  GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedSize=!_selectedSize;
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 70,
                                    // width: width / 2,
                                    decoration: (_selectedSize==true)?BoxDecoration(
                                      border: Border.all(
                                        color: Colors.grey.withOpacity(0.33),
                                      ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                          offset: Offset(0, 2), // changes position of shadow
                                        ),
                                      ],
                                    ):BoxDecoration(),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Large Bag",
                                        style: TextStyle(
                                          fontFamily: 'Geomanist',
                                          fontSize: 11,
                                        ),),
                                        Text("(22 x 15 cm)",
                                          style: TextStyle(
                                            fontFamily: 'Geomanist',
                                            fontSize: 5,
                                          ),),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Container(height: height*0.01,),
                    Text("Color",
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Geomanist'
                      ),),
                    Container(height: height*0.01,),
                    Container(
                      height: height*0.08,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: height*0.01),
                        physics: AlwaysScrollableScrollPhysics(),
                        //controller: _scrollController,
                        itemCount: 3,
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
                    Container(
                      height: height*0.07,
                      width: width,
                      child: ElevatedButton(
                        onPressed: () async {

                          if(_favorite==true){
                            await ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Color(0xffEFD8CB),
                                content:Container(
                                  height: height*0.06,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Item successfully added to Cart",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Geomanist'
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }else{
                            await ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                backgroundColor: Color(0xffEFD8CB),
                                content:Container(
                                  height: height*0.06,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Add Failed!",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Geomanist'
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }

                        },
                        child: Text("ADD TO CART",
                          style: TextStyle(
                            fontFamily: 'Geomanist',
                            fontSize: 22,
                            color: Colors.white,
                          ),
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
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
