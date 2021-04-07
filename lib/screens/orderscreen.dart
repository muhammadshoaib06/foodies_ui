import 'package:flutter/material.dart';
import 'package:foodies_ui/constants/AppColor.dart';
import 'package:foodies_ui/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:foodies_ui/constants/images.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(bottom: 12.0),
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
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
                          Container(
                              width: SizeConfig.imageSizeMultiplier * 10,
                              height: SizeConfig.imageSizeMultiplier * 10,
                              decoration: new BoxDecoration(
                                  border: Border.all(
                                    color: Colors.red,
                                    width: 0.2,
                                  ),
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.fill,
                                      image: new NetworkImage(person)))),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 2,
                      ),
                      Text(
                        'Your Order',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.aclonica(
                            fontSize: SizeConfig.textMultiplier * 3.6,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 3,
                      ),
                      OrderCard(
                        name: 'Philadelphia roll',
                        image: kaniMaki,
                        des: 'Salmon and cream cheese',
                        price: '8.90',
                        quantity: '2x',
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.5,
                      ),
                      OrderCard(
                        name: 'Takki Maki',
                        image: kaniMaki,
                        des: 'Cooked tuna',
                        price: '10.00',
                        quantity: '5x',
                      ),
                      SizedBox(
                        height: SizeConfig.heightMultiplier * 1.5,
                      ),
                      OrderCard(
                        name: 'Smoked Salmon',
                        image: kaniMaki,
                        des: 'Salmon & cucumber',
                        price: '6.00',
                        quantity: '3x',
                      ),
                      SizedBox(height: 40.0,),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery time',
                              style: TextStyle(
                                fontSize: SizeConfig.textMultiplier * 2.3,
                                fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              '45 mins',
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2,
                                  fontWeight: FontWeight.w300,
                                color: Colors.black54
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Promo code',
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2.3,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              'First30',
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54
                              ),
                            ),

                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Padding(
                        padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2.3,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Text(
                              '\$ 24.50',
                              style: TextStyle(
                                  fontSize: SizeConfig.textMultiplier * 2,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black54
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.0,),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Place Order',
                    style: GoogleFonts.aladin(
                        fontSize: SizeConfig.textMultiplier * 3.6,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Icon(Icons.arrow_right_alt_outlined, color: Colors.white, size: SizeConfig.imageSizeMultiplier * 10)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final String image;
  final String name;
  final String des;
  final price;
  final quantity;

  const OrderCard({
    Key key,
    this.image,
    this.name,
    this.des,
    this.price,
    this.quantity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.widthMultiplier * 90,
      height: SizeConfig.heightMultiplier * 16,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(image),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.actor(
                    fontSize: SizeConfig.textMultiplier * 3,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                des,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.actor(
                    color: Colors.black54,
                    fontSize: SizeConfig.textMultiplier * 2,
                    fontWeight: FontWeight.w100),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                '\$ ' + price,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.actor(
                    color: Colors.black,
                    fontSize: SizeConfig.textMultiplier * 2,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: SizeConfig.widthMultiplier * 10,
          ),
          Text(
            quantity,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(
                color: Colors.grey,
                fontSize: SizeConfig.textMultiplier * 2.7,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
