import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class AddAddressMapsScreen extends StatefulWidget {
  const AddAddressMapsScreen({Key? key}) : super(key: key);

  @override
  _AddAddressMapsScreenState createState() => _AddAddressMapsScreenState();
}

class _AddAddressMapsScreenState extends State<AddAddressMapsScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF5F6F7),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title:  Text(
          "Add Address",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Valencia',
              color: Colors.black
          ),),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.close,color: Colors.black,))
        ],
      ),
      body: Column(
        children: [
          Container(height: height*0.01,),
          Container(
            width: width*0.9,
            height: height*0.05,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100)
            ),
            child: TextFormField(
              keyboardType: TextInputType.none,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: width*0.03),
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
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(25)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
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
          Container(height: height*0.01,),
          Stack(
            children: [
              Container(
                height: height*0.73,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              ),
              Positioned(
                  bottom: height*0.03,
                  left: width*0.2,
                  child: Container(
                    height: height*0.05,
                    width: width*0.6,
                    child: ElevatedButton(
                      onPressed: (){

                      },
                      child: Text("SAVE ADDRESS",
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
                  ),)
            ],
          )
        ],
      ),
    );
  }
}
