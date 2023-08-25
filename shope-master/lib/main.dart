import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shope/widgets/icons.dart';
import 'package:shope/widgets/txtbutton.dart';
import 'package:shope/widgets/pdtcontainer.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(
                  blurRadius: 20,
                    color: (Colors.grey[200])!,
                    spreadRadius: 1,

                  )
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBottomIcon(
                  Icons.person
                ),
                buildBottomIcon(
                    Icons.shopping_bag
                ),
                buildBottomIcon(
                    Icons.home,isSelected: true
                ),
                buildBottomIcon(
                    Icons.favorite
                ),
                buildBottomIcon(
                    Icons.settings
                ),
              ],

            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: Image.asset("assets/image/hamburger.png"),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
                margin: EdgeInsets.all(10),
                child: Image.asset("assets/image/SEARCH.png")
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text('Shopez',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 buildTextButton("Home decor",isSelected: true),
                 buildTextButton("Bath and body"),
                 buildTextButton("Beauty"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            pdtcont(),
          ],
        ),
      ),
    );
  }
}
