import 'package:flutter/material.dart';

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
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/NoPath - Copy (2).png',
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      'New Brand Post',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),const SizedBox(width: 70,),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                        'Control every pixel to create\ncustomized & adaptive designs\n '),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          'assets/icons/twitter.png',
                                          height: 20,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Image.asset(
                                          'assets/icons/pinterest.png',
                                          height: 20,
                                        ),
                                        const SizedBox(
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
                      const Positioned(
                        top: 5,
                        right: 2,
                        child: Icon(Icons.more_vert)) 
                    ],
                  );
  }
}