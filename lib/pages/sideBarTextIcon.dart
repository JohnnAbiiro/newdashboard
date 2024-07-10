import 'package:flutter/material.dart';
class sideBarTextIcon extends StatelessWidget {
  double height;
  double width;
  final Color colors;
  final IconData iconData;
  final String text;
  final double fontSize;
  final Color textColor;
  Color color =Colors.blue;
  sideBarTextIcon({
    super.key,
    required this.height,
    required this.width,
    required this.colors,
    required this.iconData,
    required this.text,
    required this.fontSize,
    required this.textColor,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(4.0),
        ),
      
        child:  Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                iconData,
                color: color,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}