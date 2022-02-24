import 'package:ant_icons/ant_icons.dart';
import 'package:flutter/material.dart';

class NewArrival extends StatefulWidget {
  NewArrival({Key? key}) : super(key: key);

  @override
  _NewArrivalState createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  @override
  Widget build(BuildContext context) {
    var currentWidth = MediaQuery.of(context).size.width;
    var extraLargeScreenGrid = currentWidth > 1536;
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
        crossAxisCount: extraLargeScreenGrid
            ? 5
            : largeScreenGrid
                ? 4
                : smallScreenGrid
                    ? 3
                    : tabScreenGrid
                        ? 2
                        : 2,
        childAspectRatio: 0.7,
        mainAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
        crossAxisSpacing: smallScreenGrid ? 30.0 : 10.0,
        shrinkWrap: true,
        children: [
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2014/10/02/21/09/classroom-470680_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
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
                    "\$400",
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
                    'https://cdn.pixabay.com/photo/2017/07/12/20/53/hose-2498377_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
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
                    "\$10",
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
                    'https://cdn.pixabay.com/photo/2015/06/17/13/28/mulltonnen-812448_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
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
                    "\$40",
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
                    'https://cdn.pixabay.com/photo/2019/04/14/20/04/duck-meet-4127701_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
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
                    "\$14",
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
                    'https://cdn.pixabay.com/photo/2015/10/13/15/23/pipe-986318_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "New Ethical Fashion Women's Skater Knee Length Dress",
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
                    "\$19",
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
                    'https://cdn.pixabay.com/photo/2012/12/27/19/40/green-72773_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Decode Analogue Men's Watch Black Dial Black Colored",
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
          Container(
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/07/15/21/04/recycle-3540561_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "PIRASO Analogue Classy Look Blue Dial Watch",
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
                    "\$7",
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
                    'https://cdn.pixabay.com/photo/2017/09/25/18/02/water-2786040_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Peter England Men's Poly Viscose Notch Lapel Suit",
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
                    "\$9",
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
                    'https://cdn.pixabay.com/photo/2020/08/29/17/37/plastic-5527525_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "Arrow Sports Men's Blouson Cotton Sweater",
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
                    "\$4",
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
                    'https://cdn.pixabay.com/photo/2018/02/26/19/10/flying-3183780_1280.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: smallScreenGrid ? 250.0 : 190.0,
                      padding: EdgeInsets.only(top: 08.0),
                      child: Text(
                        "FENTACIA Men Casual Penny Loafers",
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
                    "\$4",
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
