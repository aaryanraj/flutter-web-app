import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: screenSize.height / 20,
        bottom: screenSize.height / 20,
      ),
      width: screenSize.width,
      child: Text(
        'Knowledge diversity',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
