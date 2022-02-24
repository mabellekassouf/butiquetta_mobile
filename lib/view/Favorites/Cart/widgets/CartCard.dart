import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'DemoCart.dart';

class CartCard extends StatefulWidget {
  const CartCard({Key? key,
    required this.card,
    required this.index,
  }) : super(key: key);
  final CartModel card;
  final int index;

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {

  int _itemCount = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      _itemCount=int.parse(widget.card.quantity);
    });
  }
  @override
  Widget build(BuildContext context) {
    CartProvider _cart=Provider.of<CartProvider>(context,listen:true);

    return ListTile(
      contentPadding:
      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      leading: SizedBox(
        width: 70,
        child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                "assets/images/shirt.png",// widget.card.products.images,
                fit: BoxFit.fill,
              ),
            )),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: Container(
                  child: Text(
                    widget.card.product.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Geomanist'),
                  ),
                ),
              ),
              Spacer(),
              Text(
                "${widget.card.product.price}\$",
                style: TextStyle(
                  fontFamily: 'Geomanist',
                  color: Color.fromRGBO(180, 187, 197, 1),
                ),
                maxLines: 1,
              )
            ],
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Size: " + "Medium",//widget.card.product.size[0],
            style:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 3,
          ),
          Text(
            "Color: " + widget.card.product.color[0],
            style:
            TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "Quantity: ",
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: 5,
              ),
              _itemCount != 0
                  ?Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 7), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(360),
                  ),
                  height: 25,
                  width: 25,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 18,
                    ),
                    onPressed: () {
                      setState(() => _itemCount--);
                      _cart.editquantity(_itemCount,widget.index);
                    },
                  ))
                  :Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.8),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 7),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(360),
                  ),
                  height: 25,
                  width: 25,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 20,
                    ),
                    onPressed: () {},
                  )),
              const SizedBox(
                width: 15,
              ),
              Text(
                _itemCount.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.8),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 7), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.circular(360),
                ),
                height: 25,
                width: 25,
                child: IconButton(
                    padding: EdgeInsets.zero,
                    icon: const Icon(
                      Icons.add,
                      color: Colors.black,
                      size: 20,
                    ),
                    onPressed: () {
                      if(int.parse(widget.card.product.quantitytotal)>_itemCount) {
                        setState(() {
                          _itemCount++;
                        });
                        _cart.editquantity(_itemCount,widget.index);
                      }
                    }),
              )
            ],
          ),
        ],
      ),
    );
  }
}
