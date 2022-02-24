
import 'package:flutter/material.dart';
void changeScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void changeScreenReplacement(BuildContext context, Widget widget) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => widget));
}
void changeScreenpop(BuildContext context, Widget widget) {
  Navigator.pop(context, MaterialPageRoute(builder: (context) => widget));
}

void changescreenuntill(BuildContext context ,Widget widget){
  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
      widget), (Route<dynamic> route) => false);
}