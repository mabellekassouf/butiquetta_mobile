import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Search/Search_history.dart';
import 'package:butiquetta_mobile/view/Search/Widgets/search_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SearchScreen extends StatefulWidget {

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String _selectedTab = '';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xff557374),
        body: Container(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: height*0.3,
                  child: Stack(
                    children: [
                      Container(
                        width: width,
                        height: height*0.3,
                        child: TabBarView(
                          children: [
                            Image.asset('assets/images/image_women_collection.png',
                              width: width,
                              height: height*0.3,
                              fit: BoxFit.fill,),
                            Image.asset('assets/images/image_mens_collection.png',
                              width: width,
                              height: height*0.3,
                              fit: BoxFit.fill,),
                            Image.asset('assets/images/image_childrens_collection.png',
                              width: width,
                              height: height*0.3,
                              fit: BoxFit.fill,),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            Container(
                              width: width,
                              height: height*0.2,
                              padding: EdgeInsets.only(left: width*0.1,top: height*0.05),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("WOMEN'S COLLECTION",style: TextStyle(color: Colors.white,fontSize: 9,fontFamily: 'Valencia'),),
                                  Spacer(),
                                  Text("SHOP BY\nCATEGORY",style: TextStyle(color: Colors.white,fontSize: 24,fontFamily: 'Valencia'),),
                                  Spacer(),
                                ],
                              ),
                            ),
                            Container(
                              width: width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: width*0.8,
                                    height: height*0.07,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100)
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.none,
                                      onTap: (){
                                        changeScreen(context, SearchHistoryScreen());
                                      },
                                      decoration: InputDecoration(
                                        hintText: "Search",
                                        hintStyle: TextStyle(
                                          fontFamily: 'Geomanist',
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        suffixIcon: new IconButton(
                                            iconSize: 20,
                                            onPressed: (){},
                                            icon: SvgPicture.asset('assets/icons/icon_search.svg',
                                              color: Colors.black,)
                                        ),

                                        border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xffE6E6E6),
                                            ),
                                            borderRadius: BorderRadius.circular(25)
                                        ),
                                        filled: true,
                                        fillColor: Colors.white.withOpacity(0.8),
                                      ),
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                TabBar(
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.white,
                      ),
                      insets: EdgeInsets.symmetric(horizontal: width/9)
                  ),
                  labelColor: Colors.white ,
                  unselectedLabelColor: Colors.white,
                  labelStyle:TextStyle(
                      fontSize: 20,
                      fontFamily: 'Geomanist'
                  ),
                  unselectedLabelStyle: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Geomanist'
                  ),
                  indicatorColor: Colors.white,
                  tabs: [
                    Tab(
                      child:  Text(
                        "WOMEN",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "MEN",
                      ),
                    ),
                    Tab(
                      child: Text(
                        "CHILDREN",
                      ),
                    )
                  ],
                ),
                Container(
                  height: height*0.6,
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: height*0.6,
                            padding: EdgeInsets.only(left: width*0.1,right: width*0.1),
                            child: SearchCategoriesWidget(),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: height*0.6,
                            padding: EdgeInsets.only(left: width*0.1,right: width*0.1),
                            child: SearchCategoriesWidget(),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: height*0.6,
                            padding: EdgeInsets.only(left: width*0.1,right: width*0.1),
                            child: SearchCategoriesWidget(),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
