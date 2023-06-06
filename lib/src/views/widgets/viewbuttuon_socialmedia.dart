import 'package:flutter/material.dart';

class view_socialmedia extends StatelessWidget {
  const view_socialmedia({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
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
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  InkWell(
                                    //onTap: (){  Get.to(home2());},
                                    child: Container(
                                      width: 60,
                                      height: 20,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(67),
                                          color: Colors.white),
                                      child: const Center(child: Text('view')),
                                    ),
                                  ),
                                ],
                              );
  }
}