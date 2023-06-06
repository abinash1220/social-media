import 'package:flutter/material.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';

class Button extends StatefulWidget {
  Color color;
  double height;
  double width;
  double borderRadius;
  String text;
  Button({super.key,required this.borderRadius,required this.color,required this.height,required this.text,required this.width});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
            height: widget.height,
            width: widget.width,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
            child: Center(child: Text(widget.text,style: primaryFont.copyWith(fontSize: 12,color: Colors.white))),
    );
  }
}