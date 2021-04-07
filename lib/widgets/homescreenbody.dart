import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:foodies_ui/constants/AppColor.dart';
import 'package:foodies_ui/constants/data.dart';
import 'package:google_fonts/google_fonts.dart';

import '../size_config.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(SizeConfig.widthMultiplier * 2),
        decoration: BoxDecoration(color: backgroundColor
          /* gradient: LinearGradient(
              colors: [Colors.white, backgroundColor],
              begin: Alignment.topRight,
              end: Alignment.bottomCenter)*/
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 5.0, right: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_rounded,
                    color: Colors.black,
                    size: SizeConfig.imageSizeMultiplier * 7.5,
                  ),
                  Text(
                    'Foodies UI',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.textMultiplier * 2.5,
                        fontFamily: 'Samantha',
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.person,
                      color: Colors.black,
                      size: SizeConfig.imageSizeMultiplier * 7.5),
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 6.5,
            ),
            Container(
              height: SizeConfig.heightMultiplier * 50,
              width: SizeConfig.widthMultiplier * 75,
              child: Swiper(
                itemCount: foodInfo.length,
                itemWidth: SizeConfig.widthMultiplier * 70,
                layout: SwiperLayout.STACK,
                pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                        color: Colors.tealAccent,
                        activeColor: Colors.amberAccent,
                        activeSize: 20.0,
                        space: 5.0)),
                itemBuilder: (context, index) {
                  return Container(
                      width: SizeConfig.widthMultiplier,
                      height: SizeConfig.widthMultiplier * 9 / 10,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(foodInfo[index].images),
                              fit: BoxFit.cover),
                          color: Colors.white,
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0))),
                      child: Container(
                        padding: EdgeInsets.only(
                            bottom: SizeConfig.heightMultiplier * 5),
                        decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20.0)),
                            gradient: LinearGradient(
                                colors: [Colors.transparent, Colors.black54],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter)),
                        child: Padding(
                          padding:
                          EdgeInsets.all(SizeConfig.heightMultiplier * 2.6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                foodInfo[index].name,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.pacifico(
                                    fontSize: SizeConfig.textMultiplier * 3.6,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                foodInfo[index].description,
                                style: GoogleFonts.lato(
                                    fontSize: SizeConfig.textMultiplier * 2,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ));
                },
              ),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 5,
            ),
            Text(
              'The World of Foodies!',
              style: GoogleFonts.abel(
                  fontSize: SizeConfig.textMultiplier * 4.5,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: SizeConfig.heightMultiplier * 1.8,
            ),
            Text(
              'Healthy and Delicious, it has become a favorite of may all around the world.',
              textAlign: TextAlign.center,
              style: GoogleFonts.abhayaLibre(
                  fontSize: SizeConfig.textMultiplier * 3,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}