import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/connect_social_web_view/connect_social_web_view.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class ConnectFirstAccountScreen extends StatefulWidget {
  const ConnectFirstAccountScreen({super.key});

  @override
  State<ConnectFirstAccountScreen> createState() =>
      _ConnectFirstAccountScreenState();
}

class _ConnectFirstAccountScreenState extends State<ConnectFirstAccountScreen> {
  String connectWithfaceBook = "https://posteit.org/auth/facebook";
  String connectWithInstagram = "https://posteit.org/auth/instagram";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: const Image(image: AssetImage("assets/icons/lg.png")),
        title: Text("Connect First Account",
            style: secondaryFont.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: const Color(0xff023047))),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(HomeBottomNavgationBar());
                  },
                  child: Container(
                    height: 30,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text("Skip",
                          style: primaryFont.copyWith(
                              fontSize: 9, color: const Color(0xff219EBC))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 25),
              child: Text(
                  "Social Media lets you connect multiple\nsocial networks to monitor, post and\nschedule on the go.",
                  textAlign: TextAlign.center,
                  style: primaryFont.copyWith(
                      fontSize: 17, color: const Color(0xff023047))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: InkWell(
              onTap: () {
                Get.to(() => ConnectSocialWebView(url: connectWithfaceBook));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Image(
                          image: AssetImage("assets/icons/facebook.png")),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Facebook",
                              style: primaryFont.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff023047))),
                          Text("Page or Group",
                              style: primaryFont.copyWith(
                                  fontSize: 14,
                                  color: const Color(0xff023047))),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        Image(
                            image: AssetImage("assets/icons/arrowforword.png")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 5),
            child: Divider(
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: InkWell(
              onTap: () {
                Get.to(() => ConnectSocialWebView(url: connectWithInstagram));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Image(image: AssetImage("assets/icons/insta.png")),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Instgram",
                              style: primaryFont.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xff023047))),
                          Text("Account",
                              style: primaryFont.copyWith(
                                  fontSize: 14,
                                  color: const Color(0xff023047))),
                        ],
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Row(
                      children: [
                        Image(
                            image: AssetImage("assets/icons/arrowforword.png")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Image(image: AssetImage("assets/icons/twitter.png")),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Twitter",
                            style: primaryFont.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff023047))),
                        Text("Account",
                            style: primaryFont.copyWith(
                                fontSize: 14, color: const Color(0xff023047))),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/icons/arrowforword.png")),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Image(image: AssetImage("assets/icons/linkedin.png")),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Linkedin",
                            style: primaryFont.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff023047))),
                        Text("Account",
                            style: primaryFont.copyWith(
                                fontSize: 14, color: const Color(0xff023047))),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/icons/arrowforword.png")),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Image(
                        image: AssetImage("assets/icons/pinterest.png")),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Pinterest",
                            style: primaryFont.copyWith(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xff023047))),
                        Text("Account",
                            style: primaryFont.copyWith(
                                fontSize: 14, color: const Color(0xff023047))),
                      ],
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Row(
                    children: [
                      Image(image: AssetImage("assets/icons/arrowforword.png")),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
