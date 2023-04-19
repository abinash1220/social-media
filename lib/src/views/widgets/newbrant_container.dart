import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class newbrandcontainer extends StatelessWidget {
  const newbrandcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 119,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/NoPath - Copy (2).png',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'New Brand Post',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),SizedBox(width: 70,),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                        'Control every pixel to create\ncustomized & adaptive designs\n '),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/icons/twitter.png',
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/icons/pinterest.png',
                                          height: 20,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/icons/linkedin.png',
                                          height: 20,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 2,
                        child: Icon(Icons.more_vert)) 
                    ],
                  );
  }
}