import 'package:flutter/material.dart';
import 'package:foodies_ui/screens/homescreen.dart';

import 'size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Foodies App UI',
              home: HomeScreen(),
            );
          },
        );
      },
    );
  }
}