import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.blue[600],
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.5),
              blurRadius: 10.0, // soften the shadow
              spreadRadius: 0.0, //extend the shadow
              offset: Offset(
                5.0, // Move to right 10  horizontally
                5.0, // Move to bottom 10 Vertically
              ),
            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          firstRow(),
          SizedBox(
            height: 10,
          ),
          secondRow()
        ],
      ),
    );
  }

  Widget firstRow() {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(1000))),
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage("asset/imgs/man.jpg"),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Mausam Rayamajhi",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.edit_rounded,
                  size: 16,
                  color: Colors.white,
                )
              ],
            ),
            Text(
              "A trendsetter",
              style: TextStyle(color: Colors.white),
            )
          ],
        )
      ],
    );
  }

  Widget secondRow() {
    Widget InfoChip(String firstText, String secondText) {
      return Column(
        children: [
          Text(
            firstText,
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            secondText,
            style: TextStyle(color: Colors.white),
          )
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InfoChip("846", "collect"),
        InfoChip("51", "Attention"),
        InfoChip("267", "Track"),
        InfoChip("39", "Coupons"),
      ],
    );
  }
}
