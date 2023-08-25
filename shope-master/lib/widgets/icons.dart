import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container buildBottomIcon(IconData icon,{isSelected=false}){
  return Container(
    decoration: BoxDecoration(
      color: isSelected ? Colors.pink[100] : Colors.white,
      shape: BoxShape.circle,
      boxShadow: isSelected ? [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 10,
          spreadRadius: 2,
        ) ,
      ]
          : []
    ),

    height: 50,
    width: 50,
    child: Icon(
      icon,color: isSelected ? Colors.white : Colors.black,
    ),
  );
}