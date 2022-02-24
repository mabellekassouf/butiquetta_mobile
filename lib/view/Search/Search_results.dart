import 'package:badges/badges.dart';
import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Search/Filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class SearchResultsScreen extends StatefulWidget {

  @override
  _SearchResultsScreenState createState() => _SearchResultsScreenState();
}

class _SearchResultsScreenState extends State<SearchResultsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Image.asset('assets/icons/icon_back.png',
                height: 20,
                width: 20,),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => Cart()),
                      // );
                    },
                    child: SvgPicture.asset(
                      'assets/icons/icon_cart.svg',
                    ),
                  ),
                ),
              ),
            ],
            backgroundColor: Color(0xffF5F6F7),
            pinned: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.zero,
                title: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height*0.02),
                        child: Container(
                          width: width,
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: width*0.02),
                          child: Row(
                            children: [
                              Text("Women's\nAccessories",style: TextStyle(color:Colors.black,fontFamily: 'Valencia',fontSize: 22),),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: width*0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: width*0.2,
                              height: height*0.1,
                              child: Image.asset('assets/images/image_handbag.png',
                                fit: BoxFit.fill,),
                            ),
                          ],
                        ),
                      ),
                    ]
                )
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Container(
                  width:width,
                  padding:  EdgeInsets.symmetric(horizontal: width*0.02),
                  child: Row(
                    children: [
                      Container(
                          height: 30,
                          width: 30,
                          child: IconButton(onPressed: (){
                            changeScreen(context, FilterScreen());
                          }, icon: Image.asset('assets/icons/icon_filter.png'))
                      ),
                      Text("Filter",
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Geomanist'
                        ),),
                      Spacer(),
                      Text("Sort by",
                        style: TextStyle(
                            fontSize: 10,
                            fontFamily: 'Geomanist'
                        ),),
                      Container(
                          height: 30,
                          width: 30,
                          child: IconButton(onPressed: ()async{
                            return await showDialog<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  contentPadding: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(25.0))
                                  ),
                                  content:Container(
                                    height: height*0.44,
                                    width: width*0.9,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center ,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: width*0.03),
                                          child: Row(
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor: Colors.white,
                                                ),
                                                child: Checkbox(
                                                  onChanged: (bool? recent){},
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide.none,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  checkColor: Colors.white,
                                                  activeColor: Color(0xff557374),
                                                  value: false,
                                                ),
                                              ),
                                              Text("Recently Added",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Geomanist',
                                                    fontSize: 14
                                                ),)
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xffE1E1E1),
                                          thickness: 1,
                                          height: 1,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: width*0.03),
                                          child: Row(
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor: Colors.white,
                                                ),
                                                child: Checkbox(
                                                  onChanged: (bool? LH){},
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide.none,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  checkColor: Colors.white,
                                                  activeColor: Color(0xff557374),
                                                  value: false,
                                                ),
                                              ),
                                              Text("Price low to high",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Geomanist',
                                                    fontSize: 14
                                                ),)
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xffE1E1E1),
                                          thickness: 1,
                                          height: 1,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: width*0.03),
                                          child: Row(
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor: Colors.white,
                                                ),
                                                child: Checkbox(
                                                  onChanged: (bool? HL){},
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide.none,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  checkColor: Colors.white,
                                                  activeColor: Color(0xff557374),
                                                  value: false,
                                                ),
                                              ),
                                              Text("Price high to low",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Geomanist',
                                                    fontSize: 14
                                                ),)
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xffE1E1E1),
                                          thickness: 1,
                                          height: 1,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: width*0.03),
                                          child: Row(
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor: Colors.white,
                                                ),
                                                child: Checkbox(
                                                  onChanged: (bool? few){},
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide.none,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  checkColor: Colors.white,
                                                  activeColor: Color(0xff557374),
                                                  value: false,
                                                ),
                                              ),
                                              Text("Stock level (fewest items left)",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Geomanist',
                                                    fontSize: 14
                                                ),)
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xffE1E1E1),
                                          thickness: 1,
                                          height: 1,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: width*0.03),
                                          child: Row(
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor: Colors.white,
                                                ),
                                                child: Checkbox(
                                                  onChanged: (bool? AZ){},
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide.none,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  checkColor: Colors.white,
                                                  activeColor: Color(0xff557374),
                                                  value: false,
                                                ),
                                              ),
                                              Text("Name A-Z",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Geomanist',
                                                    fontSize: 14
                                                ),)
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          color: Color(0xffE1E1E1),
                                          thickness: 1,
                                          height: 1,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: width*0.03),
                                          child: Row(
                                            children: [
                                              Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor: Colors.white,
                                                ),
                                                child: Checkbox(
                                                  onChanged: (bool? ZA){},
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide.none,
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  checkColor: Colors.white,
                                                  activeColor: Color(0xff557374),
                                                  value: false,
                                                ),
                                              ),
                                              Text("Name Z-A",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Geomanist',
                                                    fontSize: 14
                                                ),)
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }, icon: Image.asset('assets/icons/icon_sort.png'))
                      ),
                    ],
                  ),
                ),
                Container(
                  height: height*0.615,
                  child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: height*0.01),
                    physics: AlwaysScrollableScrollPhysics(),
                    //controller: _scrollController,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int i) {
                      return  GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => ProductView(searchResult[i],widget.datauser)),
                          // );
                        },
                        child: Padding(
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
                                  bottom: height*0.185,
                                  left: width*0.325,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      IconButton(
                                          onPressed: (){},
                                          icon: SvgPicture.asset(
                                            'assets/icons/icon_favorites.svg',
                                            color: Colors.black,
                                            width: width*0.02,
                                            height: height*0.02,))
                                    ],
                                  )
                              ),
                              Positioned(
                                top: height*0.19,
                                left: width*0.02,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Product Name",style: TextStyle(color: Colors.black, fontSize: 13),),
                                    Text("150.00"+"\$",style: TextStyle(color: Color(0xffB4BBC5), fontSize: 12),)
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
        ],
      ),
    );
  }
}
