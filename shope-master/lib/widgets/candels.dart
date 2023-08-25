import 'package:flutter/material.dart';
import 'package:shope/Details/productdetail.dart';
import 'package:shope/widgets/buildcolomnRow.dart';

class MyCandels extends StatelessWidget {
  const MyCandels({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal ,
      child: Center(
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            BuildColoumnRow("1","Elemental Tin Candel","Rs 50",context),
            BuildColoumnRow("2","Summer Candel","Rs 50",context),
            BuildColoumnRow("3","Winter Candel","Rs 50",context),
            BuildColoumnRow("4","Dummy Candel","Rs 50",context),
          ],
        ),
      ),
    );
  }

}
