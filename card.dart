import 'package:flutter/cupertino.dart';
import 'package:figma_squircle/figma_squircle.dart';

class BusinessCard extends StatelessWidget {
  double height;
  double width;
  String address = '';
  String boldValue = "";
  String content = "";
  Color color;
  BusinessCard(this.height, this.width, this.address, this.boldValue, this.content, this.color);

  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: height,
      width: width,

      decoration: ShapeDecoration
      (
        color: color,
        shape: SmoothRectangleBorder
        (
          borderRadius: SmoothBorderRadius
          (
            cornerRadius: 20,
            cornerSmoothing: 0.9,
          ),
        ),
      ),
      child: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Image.asset(address, height: 30),

          const SizedBox(height: 20,),
          Text
          (
            boldValue,
            style: heading(),
          ),

          Text
          (
            content,
            style: contentHead(),
          )
        ],
      )
    );
  }

  //H E A D I N G
  TextStyle heading()
  {
    return const TextStyle
    (
      fontFamily: 'InterBlack',
      fontSize: 18,
      // letterSpacing: 2.5,
      color: Color(0xff1D1C21),
    );
  }


  //C O N T E N T
  TextStyle contentHead()
  {
    return TextStyle
    (
      fontFamily: 'InterSemiBold',
      fontSize: 12,
      // letterSpacing: 2.5,
      color: const Color(0xff1D1C21).withOpacity(0.7),
    );
  }
}