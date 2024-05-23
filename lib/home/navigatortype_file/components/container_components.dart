// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

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
          style: const TextStyle(color: Colors.white),
        )),
  );
}
TextFormField nameTextField({required TextInputType keybordfindType,required String textFind,required int lengthfind,required int valueintfind,required TextEditingController controllerfind}) {
  return TextFormField(
    validator: (value) {
      if(value!.isEmpty && value.isNotEmpty)
        {
          return 'Not Any Filled Compulsory';
        }
      else if(value.length<=-1 || value.length>=lengthfind)
        {
          return 'Maximum ${lengthfind-1}';
        }
      return null;
    },
    keyboardType: keybordfindType,
    controller: controllerfind,
    textInputAction: TextInputAction.next,
    maxLines: valueintfind,
    maxLength: lengthfind-1,
    cursorColor: Colors.black,
    style:  const TextStyle(color: Colors.black87),
    decoration: InputDecoration(
      border:  OutlineInputBorder(borderSide: BorderSide.none,borderRadius: BorderRadius.circular(30)),
      isDense: true,
      fillColor: onTextFiledColor,
      filled: true,
      hintText: textFind.toString(),
    ),
  );
}
Row buildRowTextOnly({required String textFind}) {
  return Row(
    children: [
      const SizedBox(
        width: 30,
      ),
      Text(
        textFind,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600),
      ),
    ],
  );
}