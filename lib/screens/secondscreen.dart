import 'package:flutter/material.dart';
import 'package:foodies_ui/constants/AppColor.dart';
import 'package:foodies_ui/constants/images.dart';
import 'package:foodies_ui/screens/orderscreen.dart';
import 'package:foodies_ui/widgets/card.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                padding: EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.arrow_back_ios,
                                  color: Colors.black,
                                  size: SizeConfig.imageSizeMultiplier * 7.5)),
                          Icon(Icons.search,
                              color: Colors.black,
                              size: SizeConfig.imageSizeMultiplier * 7.5)
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 4.5,
                      ),
                      Text(
                        'Fresh Healthy',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.aclonica(
                            fontSize: SizeConfig.textMultiplier * 4,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.3,
                      ),
                      Text(
                        'Delicious Items',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.zillaSlab(
                            fontSize: SizeConfig.textMultiplier * 3.1,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 4,
                      ),
                      buildRow(),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FoodCard(
                            name: 'Kani Maki',
                            description: 'Crab sticks',
                            image: kaniMaki,
                            price: '4.90',
                            icon: Icons.favorite_border,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FoodCard(
                            name: 'Salmon',
                            description: 'Fresh Salmon & avocado',
                            image: kaniMaki,
                            price: '4.70',
                            icon: Icons.favorite,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FoodCard(
                            name: 'Takki Maki',
                            description: 'Cooked tuna',
                            image: kaniMaki,
                            price: '5.10',
                            icon: Icons.favorite,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FoodCard(
                            name: 'Smoked Salmon',
                            description: 'Salmon & Cucumber',
                            image: kaniMaki,
                            price: '4.10',
                            icon: Icons.favorite_border,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                ),
              ),
              BottomIcons(),
            ],
          ),
        ),
      ),
    );
  }
  Row buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding:
              EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Row(children: [
            Container(
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.red),
              width: SizeConfig.widthMultiplier * 1.6,
              height: SizeConfig.widthMultiplier * 1.6,
            ),
            SizedBox(
              width: SizeConfig.widthMultiplier * 3,
            ),
            Text(
              'Rolls',
              style: GoogleFonts.antic(
                fontSize: SizeConfig.textMultiplier * 2.7,
                fontWeight: FontWeight.w700,
              ),
            ),
          ]),
        ),
        Text(
          'Soups',
          style: GoogleFonts.antic(
            fontSize: SizeConfig.textMultiplier * 2.5,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          'Pizza',
          style: GoogleFonts.antic(
            fontSize: SizeConfig.textMultiplier * 2.5,
            fontWeight: FontWeight.w400,
          ),
        ),
        Icon(
          Icons.add_road,
          color: Colors.black,
          size: SizeConfig.imageSizeMultiplier * 7,
        )
      ],
    );
  }
}
class BottomIcons extends StatelessWidget {
  const BottomIcons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 30.0, right: 30.0, bottom: 15.0, top: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.home_outlined,
              color: Colors.white, size: SizeConfig.imageSizeMultiplier * 10),
          Icon(Icons.ac_unit_outlined,
              color: Colors.white, size: SizeConfig.imageSizeMultiplier * 10),
          InkWell(
            onTap: (){Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderScreen()),
            );},
            child: Icon(Icons.message_outlined,
                color: Colors.white, size: SizeConfig.imageSizeMultiplier * 10),
          ),
          Icon(Icons.person_outline,
              color: Colors.white, size: SizeConfig.imageSizeMultiplier * 10)
        ],
      ),
    );
  }
}