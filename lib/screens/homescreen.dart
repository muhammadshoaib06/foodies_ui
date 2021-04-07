import 'package:flutter/material.dart';
import 'package:foodies_ui/screens/secondscreen.dart';
import 'package:foodies_ui/widgets/homescreenbody.dart';
import 'package:foodies_ui/size_config.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizeConfig.isMobilePortrait
            ? BodyWidget()
            : SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: BodyWidget(),
              ),
        floatingActionButton: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(15.0),
            margin: EdgeInsets.only(bottom: 15.0, right: 20.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Icon(
              Icons.arrow_right_alt_outlined,
              color: Colors.white,
              size: SizeConfig.imageSizeMultiplier * 7,
            ),
          ),
        ));
  }
}


