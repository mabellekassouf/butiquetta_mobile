import 'package:flutter/material.dart';

import 'AddressCard.dart';
import 'DemoAddress.dart';

class AddressList extends StatefulWidget {
  const AddressList({Key? key,}) : super(key: key);

  @override
  _AddressListState createState() => _AddressListState();
}

class _AddressListState extends State<AddressList> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: DemoAddress.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              AddressCard(),
            ],
          ),
        ),
      ),
    );
  }
}
