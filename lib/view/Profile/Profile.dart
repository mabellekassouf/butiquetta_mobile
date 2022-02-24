import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Profile/Address%20Book/AddressBook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'My Details/MyDetails.dart';
import 'My Orders/MyOrders.dart';
import 'Notifications/Notifications.dart';
import 'Payment Methods/PaymentMethods.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(62.0),
        child: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "My Account",
            style: TextStyle(
                color: Colors.black, fontFamily: 'Valencia', fontSize: 25),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:
        Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: ClipOval(
                    child: Container(
                      color: Colors.white,
                      child: Image.asset(
                        "assets/images/profilepages.png",
                        fit: BoxFit.cover,
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello,",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Geomanist',
                            fontSize: 19),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text.rich(
                        TextSpan(
                          text: "John Smith",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Geomanist',
                              fontSize: 19),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'SIGN OUT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Geomanist',
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(85, 115, 116, 1),
                          side: BorderSide(
                            color: Color.fromRGBO(85, 115, 116, 1),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Color.fromRGBO(112, 112, 112, 1),
              indent: 25,
              endIndent: 25,
            ),
            SizedBox(
              height: 5,
            ),
            ProfileListTile(
              image: "assets/icons/myOrders-icon.svg",
              title: "My Orders",
              press: (){
                changeScreen(context,OrdersView());
              },
            ),
            Divider(
              color: Color.fromRGBO(112, 112, 112, 1),
              indent: 25,
              endIndent: 25,
            ),
            SizedBox(
              height: 5,
            ),
            ProfileListTile(
              image: "assets/icons/MyDetails-icon.svg",
              title: "My Details",
              press: (){
                changeScreen(context,MyDetailsView());
              },
            ),
            Divider(
              color: Color.fromRGBO(112, 112, 112, 1),
              indent: 25,
              endIndent: 25,
            ),
            SizedBox(
              height: 5,
            ),
            ProfileListTile(
              image: "assets/icons/addressbook-icon.svg",
              title: "Address Book",
              press: (){
                changeScreen(context,ProfileAddressBookScreen());
              },
            ),
            Divider(
              color: Color.fromRGBO(112, 112, 112, 1),
              indent: 25,
              endIndent: 25,
            ),
            SizedBox(
              height: 5,
            ),
            ProfileListTile(
              image: "assets/icons/money-icon.svg",
              title: "Payment Methods",
              press: (){
                changeScreen(context,PaymentMethodScreen());
              },
            ),
            Divider(
              color: Color.fromRGBO(112, 112, 112, 1),
              indent: 25,
              endIndent: 25,
            ),
            SizedBox(
              height: 5,
            ),
            ProfileListTile(
              image: "assets/icons/notifications-icon.svg",
              title: "Notifications",
              press: (){
                changeScreen(context,NotificationsScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}


class ProfileListTile extends StatelessWidget {
  final image;
  const ProfileListTile({
    Key? key,
    required this.title,
    required this.press,
    required this.image,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width:40,
        ),
        Expanded(
          child: ListTile(
            leading: SvgPicture.asset(
              image,
              color: Colors.black,
            ),
            title: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Geomanist',
                fontSize: 16,
              ),
            ),
            trailing: IconButton(
              onPressed: (){},
                icon: SvgPicture.asset("assets/icons/Forwardarrow.svg")
            ),
          ),
        ),
      ],
    );
  }
}