import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shope/Details/productdetail.dart';
import 'package:shope/widgets/bottomcontainer.dart';
import 'package:shope/widgets/buildcolomnRow.dart';
import 'package:shope/widgets/buildcolomtop.dart';
import 'package:shope/widgets/candels.dart';
import 'package:shope/widgets/linebar.dart';

class pdtcont extends StatelessWidget {
  const pdtcont({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 20,
            ),
          ]
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                       return DetailsPage();
                     }));
                    },
                      child: BuildColoumnAtTop(
                          "Candels",
                          isSelected: true
                      ),
                  ),
                  BuildColoumnAtTop("Candels"),
                  BuildColoumnAtTop("vases"),
                  BuildColoumnAtTop("bins"),
                  BuildColoumnAtTop("Floral"),
                  BuildColoumnAtTop("Decor"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              MyCandels(),
              SizedBox(
                height: 10,
              ),
              LineBar(),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Text("Holiday Special",
                    style: TextStyle(
                      fontSize: 24,
                    ),
                    ),
                    Spacer(),
                    Text("View All",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BottomContainer(),
                    BottomContainer(),
                    BottomContainer(),
                    BottomContainer(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
