import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

class WebProducts extends StatefulWidget {
  WebProducts({Key? key}) : super(key: key);

  @override
  _WebProductsState createState() => _WebProductsState();
}

class _WebProductsState extends State<WebProducts> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var largeScreenGrid = currentWidth > 1366;
    var smallScreenGrid = currentWidth > 1201;
    var tabScreenGrid = currentWidth > 769;

    return Container(
      margin: EdgeInsets.only(
          left: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          top: smallScreenGrid ? 30.0 : 15.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          bottom: 0.0),
      child: Container(
        child: GridView.count(
          crossAxisCount: smallScreenGrid ? 3 : 2,
          childAspectRatio: 01.48,
          mainAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
          crossAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2015/11/25/11/07/plastic-1061731_1280.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  smallScreenGrid
                      ? Container(
                          margin: EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0.0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(0.0),
                              ),
                              padding: EdgeInsets.all(18.0),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  right: 30.0,
                                  bottom: 0.0),
                              child: Text(
                                'Top Offers',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2020/04/26/04/38/disinfectant-5093503_1280.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Icon(
                      AntIcons.heart_outline,
                      color: Colors.white,
                      size: smallScreenGrid ? 40.0 : 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2017/03/02/12/59/plastic-screw-caps-2111253_1280.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Icon(
                      AntIcons.heart_outline,
                      color: Colors.white,
                      size: smallScreenGrid ? 40.0 : 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2018/03/02/17/36/straws-3193715_1280.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  smallScreenGrid
                      ? Container(
                          margin: EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0.0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(0.0),
                              ),
                              padding: EdgeInsets.all(18.0),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  right: 30.0,
                                  bottom: 0.0),
                              child: Text(
                                'Exclusive',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      'https://cdn.pixabay.com/photo/2018/04/03/21/21/balls-3288122_1280.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  smallScreenGrid
                      ? Container(
                          margin: EdgeInsets.all(20.0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              elevation: 0.0,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(0.0),
                              ),
                              padding: EdgeInsets.all(18.0),
                            ),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 0.0,
                                  right: 30.0,
                                  bottom: 0.0),
                              child: Text(
                                'Explore Watches',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            ),
            Container(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        'https://cdn.pixabay.com/photo/2014/12/28/18/31/clothes-hangers-582212_1280.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15.0),
                    child: Icon(
                      AntIcons.heart_outline,
                      color: Colors.white,
                      size: smallScreenGrid ? 40.0 : 25.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
