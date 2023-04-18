import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Post_container extends StatelessWidget {
  const Post_container({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
              height: 50,
              width: double.infinity,
              color: Color(0xFFA35ED8),
              child: Padding(
                padding: EdgeInsets.only(right: 5, left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/images.jpeg'),
                    ),
                    Text('Control every pixel adaptive designs that lo'),
                    Container(
                      width: 60,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(67),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        'post',
                        style: TextStyle(
                          color: Color(0xFFA35ED8),
                        ),
                      )),
                    ),
                  ],
                ),
              ),
            );
  }
}