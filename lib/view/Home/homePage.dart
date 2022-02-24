import 'package:badges/badges.dart';
import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/helper/utils.dart';
import 'package:butiquetta_mobile/view/Authentication/Login.dart';
import 'package:butiquetta_mobile/view/Favorites/Cart/CartView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomePageScreen extends StatefulWidget {

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _current = 0;

  List imgList = [
    'assets/images/bag.jpg',
    'assets/images/shirt.jpg',
    'assets/images/shoes.jpg',
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
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xffEFD8CB),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffEFD8CB),
        title: Text("HOME PAGE", style: TextStyle(fontFamily: 'Valencia',fontSize: 24,color: Colors.black),),
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
                onTap: () {
                  changeScreen(context, CartView());
                },
                child: SvgPicture.asset(
                  'assets/icons/icon_cart.svg',
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.logout,color: Colors.black,),

            onPressed: () async {
              final confirmation =
              await showConfirmationDialog(context, "Confirm Sign out ?");
              if (confirmation) {
               // AuthentificationService().signOut();
                SharedPreferences _pref=await SharedPreferences.getInstance();
                _pref.setBool("logged", false);
                changescreenuntill(context, LoginScreen());
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    reverse: false,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds: 6),
                    scrollDirection: Axis.horizontal,
                    autoPlayAnimationDuration: Duration(milliseconds: 5000),
                    pauseAutoPlayOnTouch: true,
                    height: height*0.25,
                    viewportFraction: 1,
                    initialPage: 0,
                    enlargeCenterPage: false,
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
                              color: Colors.transparent,
                            ),
                            child: Image.network(
                              imgUrl,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            ),
                          );
                        });
                  }).toList(),
                ),
                Positioned(
                  top: height*0.2,
                  left:MediaQuery.of(context).size.width/2.4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(
                        imgList, (index, url) {
                      return Container(
                        width: 8,
                        height: 8,
                        margin: EdgeInsets.symmetric(
                            vertical: 18, horizontal: 3.0),
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
            Container(height: height*0.02,),
            Text("- NEW ARRIVALS -",
              style: TextStyle(fontFamily: 'Valencia',fontSize: 18,color: Colors.black),
            ),
            Container(height: height*0.02,),
            Container(
              height: height*0.53,
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: height*0.01),
                physics: AlwaysScrollableScrollPhysics(),
                //controller: _scrollController,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount:12,
                itemBuilder: (BuildContext context, int i) {
                  return  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => ProductScreen(productDetails.productFavStatusList[i],i,listproduct[i])),
                      // );
                    },
                    child:   Padding(
                      padding: EdgeInsets.only(left: 7.5, right: 7.5, bottom: 7),
                      child: Stack(
                        children: [
                          Container(
                            height: height*0.3,
                            // width: width / 2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: NetworkImage( "https://assets.myntassets.com/h_1440,q_90,w_1080/v1/assets/images/8376863/2019/1/9/dfa64751-68eb-4153-a652-e0ef3fcfc9361547036704262-Lino-Perros-Off-White-Solid-Handheld-Bag-3101547036703952-2.jpg"    ,
                                ),fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: height*0.16,
                              left: width*0.325,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  //buildFavouriteButton(listproduct[i].id,i)

                                  InkWell(
                                    // onTap: () async {
                                    //   bool success = false;
                                    //   final future = UserDatabaseHelper()
                                    //       .switchProductFavouriteStatus(
                                    //       listproduct[i].id, !productDetails.productFavStatusList[i])
                                    //       .then(
                                    //         (status) {
                                    //       success = status;
                                    //     },
                                    //   ).catchError(
                                    //         (e) {
                                    //       Logger().e(e.toString());
                                    //       success = false;
                                    //     },
                                    //   );
                                    //   await showDialog(
                                    //     context: context,
                                    //     builder: (context) {
                                    //       return FutureProgressDialog(
                                    //         future,
                                    //         message: Text(
                                    //           productDetails.productFavStatusList[i]
                                    //               ? "Removing from Favourites"
                                    //               : "Adding to Favourites",
                                    //         ),
                                    //       );
                                    //     },
                                    //   );
                                    //   if (success) {
                                    //     if(productDetails.productFavStatusList[i]==true){
                                    //       productDetails.productFavStatusList[i]=false;
                                    //     }else{
                                    //       productDetails.productFavStatusList[i]=true;
                                    //     }
                                    //     productDetails.notifyListeners();
                                    //   }
                                    // },
                                    child: Container(
                                      padding: EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                        // color: productDetails.productFavStatusList[i]
                                        //     ? Color(0xFFFFE6E6)
                                        //     : Color(0xFFF5F6F9),
                                        color: Color(0xFFF5F6F9) ,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.white, width: 4),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Icon(
                                          Icons.favorite,
                                          // color: productDetails.productFavStatusList[i]
                                          //     ? Color(0xFFFF4848)
                                          //     : Color(0xFFD8DEE4),
                                          color: Color(0xFFD8DEE4),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                          ),
                          Positioned(
                            top: height*0.165,
                            left: width*0.03,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Product Name",style: TextStyle(color: Colors.black, fontSize: 13),),
                                Text("5000"+"\$",style: TextStyle(color: Color(0xffB4BBC5), fontSize: 12),)
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
          ],
        ),
      ),
    );
  }
}
