import 'package:flutter/material.dart';
TextButton buildTextButton(
    String text, {bool isSelected = false}) {
  return TextButton(
    onPressed: (){
      print('Button Pressed');
    },
    child: Text(text,
      style: TextStyle(
        color: isSelected ?  Colors.white
        : Colors.black,fontSize: 18,
      ),
    ),
    style: TextButton.styleFrom(
      shape: StadiumBorder(
        side: BorderSide(
          color: isSelected ? Colors.pink
          : Colors.grey,
        ),
      ),
    ),
  );
}

