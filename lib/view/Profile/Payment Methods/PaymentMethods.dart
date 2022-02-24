import 'package:butiquetta_mobile/helper/screen_navigation.dart';
import 'package:butiquetta_mobile/view/Profile/Payment%20Methods/Add_Payment_Method.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  _PaymentMethodScreenState createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool setDefaultPayment = false;
  bool loading=true;



  @override
  void initState() {
    super.initState();
  }
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
          "Payment Methods",
          style: TextStyle(
              fontSize: 20,
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
            Container(height: height*0.01,),
            Container(
              height: height*0.07,
              width: width*0.9,
              child: ElevatedButton(
                onPressed: (){
                  changeScreen(context, AddPaymentMethod(edit: false,card: CardModel(),));
                },
                child: Text("ADD NEW PAYMENT METHOD",
                  style: TextStyle(
                    fontFamily: 'Geomanist',
                    fontSize: 15,
                    color: Color(0xff557374),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffF5F6F7),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff557374),
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
            Container(height: height*0.02,),
            // loading?
            // Center(child: CircularProgressIndicator(),):
            // _card.listcard.length==0?
            // Center(child: Text("No Cards To Display"),):
            ListView.separated(
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: height*0.02,
                );
              },
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) =>
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Container(
                              width: width,
                              padding: EdgeInsets.symmetric(horizontal: width*0.05),
                              child: Row(
                                children: [
                                
                                  Container(
                                    width: width*0.8,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text("VISA",
                                              style: TextStyle(
                                                fontFamily: 'Geomanist',
                                                fontSize: 14,
                                              ),
                                            ),
                                            Container(width: width*0.02,),
                                            Text("7562"+" **** **** **** ",
                                              style: TextStyle(
                                                fontFamily: 'Geomanist',
                                                fontSize: 14,
                                              ),
                                            ),
                                            Spacer(),
                                            IconButton(
                                              onPressed: (){
                                                changeScreen(context, AddPaymentMethod(edit: true,card: _card.listcard[index],));
                                              },
                                              icon: Container(
                                                width: 20,
                                                height: 20,
                                                child: Image.asset('assets/icons/icon_edit_item.png'),),
                                            )
                                          ],
                                        ),
                                        Text("JOHN DOE",
                                          style: TextStyle(
                                            fontFamily: 'Geomanist',
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text("Expiry date: "+'07/2020',
                                          style: TextStyle(
                                            fontFamily: 'Geomanist',
                                            fontSize: 14,
                                          ),
                                        ),
                                        Container(height: height*0.01,),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: Checkbox(
                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                onChanged: (bool? v){
                                                  setState(() {
                                                    setDefaultPayment=!setDefaultPayment;
                                                  });
                                                },
                                                value: setDefaultPayment,
                                                activeColor: Color(0xff557374),
                                                fillColor: MaterialStateProperty.all<Color>(Color(0xff557374)),
                                                focusColor: Color(0xffF5F6F7),
                                                checkColor: Colors.white,
                                              ),
                                            ),
                                            Container(width: width*0.02,),
                                            Text((setDefaultPayment==false)?"Set as Default Payment Method":"Default Payment Method",
                                              style: TextStyle(
                                                fontFamily: 'Geomanist',
                                                fontSize: 14,
                                                color: Colors.black,
                                              ),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
