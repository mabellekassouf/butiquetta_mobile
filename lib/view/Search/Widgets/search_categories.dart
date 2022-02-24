import 'dart:ui';
import 'package:butiquetta_mobile/view/Search/Search_results.dart';
import 'package:flutter/material.dart';




class SearchCategoriesWidget extends StatefulWidget {

  @override
  _SearchCategoriesWidgetState createState() => _SearchCategoriesWidgetState();
}

class _SearchCategoriesWidgetState extends State<SearchCategoriesWidget> {
  ScrollController _scrollController = ScrollController();
  bool isLoading=false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return
      // isLoading?
      // Padding(
      //     padding: EdgeInsets.all(20),
      //     child: Center(child: CircularProgressIndicator(color: Colors.cyanAccent,)))
      //     :_offer.listofferByIdProff.length==0?
      // Center(child: Text("No Categories to display",style: TextStyle(color: Colors.white),),):
      ListView.builder(
          padding: EdgeInsets.only(top: height*0.03),
          physics: AlwaysScrollableScrollPhysics(),
          controller: _scrollController,
          itemCount: 10,
          itemBuilder: (BuildContext context, int i) {
            return
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SearchResultsScreen()),
                  );
                },
                child: Container(
                  height: 200,
                  width: width,
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height/30),
                  child: Stack(
                    children: [
                      Container(
                        width: width,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/image_women_collection.png'), //CHANGE HEREEEEEEE
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff557374)),
                      ),
                      Positioned(
                        top: 70,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 21, vertical: 8),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.8),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(4),
                              topRight: Radius.circular(4),
                            ),
                          ),
                          child: Center(
                              child: Text("Accessories",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Valencia',
                                      fontSize: 20))),
                        ),
                      ),
                    ],
                  ),
                ),
              ) ;
          }
      );

  }
}
