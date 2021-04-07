import 'package:flutter/material.dart';
import 'package:foodies_ui/constants/AppColor.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String description;
  final String image;
  final String price;
  final IconData icon;

  const FoodCard({
    Key key,
    this.name,
    this.description,
    this.image,
    this.price,
    this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthMultiplier * 39,
      height: SizeConfig.heightMultiplier * 24,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.8,
              blurRadius: 2,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.circular(25.0),
          gradient: LinearGradient(
            colors: [cardColor, Colors.white],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )),
      child: Stack(
        children: [
          Positioned(
            top: -10,
            left: 10,
            right: 10,
            child: Image.network(image),
          ),
          Positioned(
            left: 10,
            bottom: 8,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: GoogleFonts.acme(
                      fontSize: 20.0, fontWeight: FontWeight.w400),
                ),
                Text(
                  description,
                  style: GoogleFonts.antic(fontSize: 13.0),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      '\$' + price,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 70.0,
                    ),
                    Icon(
                      icon,
                      size: SizeConfig.imageSizeMultiplier * 4,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
