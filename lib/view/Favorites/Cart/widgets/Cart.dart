import 'package:butiquetta_mobile/view/Favorites/Cart/widgets/SlidableWidget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CartCard.dart';

class CartList extends StatefulWidget {
  const CartList({
     Key? key,
  }) : super(key: key);

  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {

  @override
  Widget build(BuildContext context) {
   // CartProvider _cart=Provider.of<CartProvider>(context,listen:true);

    return Container(
      height: MediaQuery.of(context).size.height*0.4,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
            child: SlidableWidget(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: CartCard(
                  card: _cart.listcart[index],
                  index:index,
                ),
              ),
              index: index,
            ),
          );
        },
      ),
    );
  }
}
