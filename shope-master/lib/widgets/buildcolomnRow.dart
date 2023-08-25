import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shope/Details/productdetail.dart';

GestureDetector BuildColoumnRow(
    String img,
    String title,
    String price,
    BuildContext context
    ) {
  return GestureDetector(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)
      {
        return DetailsPage();
      }));
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 220,
            width: 160,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/image/candel$img.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(title,
            style: TextStyle(
                fontSize: 16
            ),
          ),
          Text(   price,
            style: TextStyle(
                fontSize: 20
            ),
          ),
        ],
      ),
    ),
  );
}