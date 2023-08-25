import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Column BuildColoumnAtTop(
    String text, {bool isSelected = false}
    ){
  return Column(
    children: [
      Text(text,
      style: TextStyle(
        color: isSelected ? Colors.black : Colors.grey,
        fontSize: 18,
      ),
      ),
      if(isSelected)
      SizedBox(
        height: 5,
      ),
      Container(
        height: 5,
        width: 5,
        decoration: BoxDecoration(
          color: Colors.black,
          shape: BoxShape.circle,
        ),
      ),
    ],
  );
}