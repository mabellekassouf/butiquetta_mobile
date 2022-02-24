import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

class BestSelling extends StatefulWidget {
  BestSelling({Key? key}) : super(key: key);

  @override
  _BestSellingState createState() => _BestSellingState();
}

class _BestSellingState extends State<BestSelling> {
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
          top: 0.0,
          right: largeScreenGrid
              ? 100.0
              : smallScreenGrid
                  ? 40.0
                  : tabScreenGrid
                      ? 10.0
                      : 10.0,
          bottom: 0.0),
      child: GridView.count(
        crossAxisCount: smallScreenGrid ? 4 : 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: 30.0,
        crossAxisSpacing: 30.0,
        shrinkWrap: true,
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2016/09/06/19/06/lego-blocks-1649909_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 225.0 : 200.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "SB CREATION Women's Knee Length Dress",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$200",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/10/11/22/44/massage-balls-3741097_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 225.0 : 200.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "FINE FASHION Comfortable Casual Flats Sandal",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$11",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2011/06/29/15/16/cutlery-8188_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 225.0 : 200.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Nike Men Flex 2019 Rn Running Shoes",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$30",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2017/07/08/08/14/spoon-2483768_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 225.0 : 200.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Super stylist fashion jeans for women",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: smallScreenGrid ? 17.0 : 15.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        AntIcons.heart_outline,
                        size: smallScreenGrid ? 32.0 : 25.0,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 05.0, bottom: 08.0),
                  child: Text(
                    "\$5",
                    style: TextStyle(
                      color: Colors.orange,
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                    ),
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
