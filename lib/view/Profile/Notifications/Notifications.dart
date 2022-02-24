import 'package:flutter/material.dart';
class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool switchnotification = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:  Text(
          "Notifications",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Valencia',
              color: Colors.black
          ),),
        backgroundColor: Colors.white,
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
            Container(height: height*0.02),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text(
                      'Allow Notifications',
                      style: TextStyle(
                        fontSize: width*0.035,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Transform.scale(
                        scale: height*0.0015,
                        child: Switch(
                          onChanged: toggleSwitch,
                          value: switchnotification,
                          activeColor: Colors.white,
                          activeTrackColor: Color(0xff557374),
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Color.fromRGBO(44, 46, 61, 1),
                        )),
                  ]),
                ],
              ),
            ),
            Container(height: height*0.02),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [

                    Text(
                      'Discount and Sales',
                      style: TextStyle(
                        fontSize: width*0.035,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Transform.scale(
                        scale: height*0.0015,
                        child: Switch(
                          onChanged: toggleSwitch,
                          value: switchnotification,
                          activeColor: Colors.white,
                          activeTrackColor: Color(0xff557374),
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Color.fromRGBO(44, 46, 61, 1),
                        )),
                  ]),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15,),
              child: Divider(
                color: Color(0xffE1E1E1),
                thickness: 1,
                height: 1,
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Text(
                      'Alert for New Items',
                      style: TextStyle(
                        fontSize: width*0.035,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Transform.scale(
                        scale: height*0.0015,
                        child: Switch(
                          onChanged: toggleSwitch,
                          value: switchnotification,
                          activeColor: Colors.white,
                          activeTrackColor: Color(0xff557374),
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Color.fromRGBO(44, 46, 61, 1),
                        )),
                  ]),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                color: Color(0xffE1E1E1),
                thickness: 1,
                height: 1,
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [

                    Text(
                      'Order Updates',
                      style: TextStyle(
                        fontSize: width*0.035,
                        color: Colors.black,
                      ),
                    ),
                  ]),
                  Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Transform.scale(
                        scale: height*0.0015,
                        child: Switch(
                          onChanged: toggleSwitch,
                          value: switchnotification,
                          activeColor: Colors.white,
                          activeTrackColor: Color(0xff557374),
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Color.fromRGBO(44, 46, 61, 1),
                        )),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleSwitch(bool value) {

    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Allow Notification'),
        content: const Text('Allow Notification ?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Cancel'),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                if (switchnotification == false) {
                  setState(() {
                    switchnotification = true;
                  });
                } else {
                  setState(() {
                    switchnotification = false;
                  });
                }

                Navigator.pop(context, 'OK');
              });
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}
