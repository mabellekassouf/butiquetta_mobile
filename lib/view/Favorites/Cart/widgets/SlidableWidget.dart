import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class SlidableWidget extends StatelessWidget {
  Widget child;
  int index;
  SlidableWidget({required this.child, required this.index});

  @override
  Widget build(BuildContext context) {
    //CartProvider _cart=Provider.of<CartProvider>(context,listen: false);

    return Slidable(
      child: child,
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context){},
            backgroundColor:  Color.fromRGBO(85, 115, 116, 1),
            foregroundColor: Color.fromRGBO(239, 216, 203, 1),
            icon: Icons.favorite,
            label: 'SAVE FOR LATER',

          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            backgroundColor:  Color.fromRGBO(239, 216, 203, 1),
            foregroundColor: Color.fromRGBO(85, 115, 116, 1),
            icon: Icons.delete,
            label: 'DELETE',
            onPressed:(context){

            },
          ),
        ],
      ),
    );
  }
}
