import 'package:butiqueta/view/Profile/My%20Orders/widgets/OrderCard.dart';
import 'package:flutter/material.dart';

import 'UserOrders.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: DemoOrderList.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
          child: OrderCard(
            userOrder: DemoOrderList[index],
          ),
        ),
      ),
    );
  }
}
