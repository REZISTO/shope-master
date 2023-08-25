import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 100,
      width: 260,
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
              height: 120,
              width: 100,
              child: Image.asset('assets/image/candel3.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Text("Coconut Milk Bath"),
                Text("16 oz",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Text("₹ 50")
              ],
            ),
          )
        ],
      ),
    );
  }
}
