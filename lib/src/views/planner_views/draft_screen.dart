import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';

class DraftScreen extends StatefulWidget {
  const DraftScreen({super.key});

  @override
  State<DraftScreen> createState() => _DraftScreenState();
}

class _DraftScreenState extends State<DraftScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        children: [
                  Container(
                          width: size.width,
                          height: 119,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow:const [
                                   BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 3.20,
                                spreadRadius: 0.50,
                                color: Color.fromARGB(255, 201, 200, 200),
                              )
                              ],
                              borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                    'assets/images/5.png',
                                    ),
                                    const SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("New Brand Post",
                                          style: primaryFont.copyWith(fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text("Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.",
                                          style: primaryFont.copyWith(fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5
                                          ),
                                        ),
                                         Text("#new #trending #design",
                                          style: primaryFont.copyWith(fontSize: 9,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500
                                          ),
                                        ),
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
                                Row(
                                  children:const [
                                    Icon(Icons.more_vert)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: size.width,
                          height: 119,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow:const [
                                   BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 3.20,
                                spreadRadius: 0.50,
                                color: Color.fromARGB(255, 201, 200, 200),
                              )
                              ],
                              borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                    'assets/images/413.png',
                                    ),
                                    const SizedBox(width: 0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("New Brand Post",
                                          style: primaryFont.copyWith(fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text("Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.",
                                          style: primaryFont.copyWith(fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5
                                          ),
                                        ),
                                         Text("#new #trending #design",
                                          style: primaryFont.copyWith(fontSize: 9,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500
                                          ),
                                        ),
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
                                // Row(
                                //   children:const [
                                //     Icon(Icons.more_vert)
                                //   ],
                                // ),
                                Row(
                                  children: [
                                    PopupMenuButton(
                                      itemBuilder: (BuildContext context) => [
                                      PopupMenuItem(child: Text("Edit")),
                                      PopupMenuItem(child: Text("Delete")),
                                    ]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          width: size.width,
                          height: 119,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow:const [
                                   BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 3.20,
                                spreadRadius: 0.50,
                                color: Color.fromARGB(255, 201, 200, 200),
                              )
                              ],
                              borderRadius: BorderRadius.circular(6)),
                            child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                    'assets/images/6.png',
                                    ),
                                    const SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        Text("New Brand Post",
                                          style: primaryFont.copyWith(fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600
                                          ),
                                        ),
                                        Text("Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt ut labore et dolore magna aliqua.",
                                          style: primaryFont.copyWith(fontSize: 9,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          height: 1.5
                                          ),
                                        ),
                                         Text("#new #trending #design",
                                          style: primaryFont.copyWith(fontSize: 9,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500
                                          ),
                                        ),
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
                                Row(
                                  children:const [
                                    Icon(Icons.more_vert)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
        ],
      ),
    );
  }
}