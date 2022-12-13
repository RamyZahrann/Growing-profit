import 'package:flutter/material.dart';

import 'Donut_title.dart';

class DonutTab extends StatelessWidget {
  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName, donutText ]
    ["Tomato", "36", Colors.red, "Images/tomato.png", "Text1"],
    ["onion", "45", Colors.purple, "Images/onion.png", "Text2"],
    ["Rice", "84", Colors.yellow, "Images/rice.png", "Text3"],
    ["Cucumber", "95", Colors.green, "Images/cucumber.png", "Text4"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
          donutText: donutsOnSale[index][4],
        );
      },
    );
  }
}
