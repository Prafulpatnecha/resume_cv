import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
Widget containerTab({required String textFind}) {
  return Container(
    height: 35,
    width: 110,
    decoration: BoxDecoration(
        color: onScreenColor,
        borderRadius: BorderRadius.circular(20)),
    child: Center(
        child: Text(
          textFind.toString(),
          style: TextStyle(color: Colors.white),
        )),
  );
}
TextFormField nameTextField() {
  return TextFormField(
    cursorColor: Colors.black,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      isDense: true,
    ),
  );
}