import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/models/posts_models/get_post_model.dart';
import 'package:social_media_marketing/src/views/home_views/edit_post.dart';

class postMenuOptions extends StatefulWidget {
  GetPostsData getPostsData;
  postMenuOptions({super.key, required this.getPostsData});

  @override
  State<postMenuOptions> createState() => _PostMenuOptionsState();
}

class _PostMenuOptionsState extends State<postMenuOptions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: PopupMenuButton(
              onSelected: (value) {
                if (value == 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EditScreen(
                            getPostsData: widget.getPostsData,
                          )));
                } else if (value == 0) {
                  _showlogPost(context);
                } else if (value == 2) {
                  _showlog(context);
                }
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(value: 0, child: const Text("Post")),
                PopupMenuItem(value: 1, child: const Text("Edit")),
                PopupMenuItem(value: 2, child: const Text("Deleted")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showlog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("assets/images/dlt.png")),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("Are you sure you want\nto delete this post?",
                        textAlign: TextAlign.center,
                        style: primaryFont.copyWith(
                            fontSize: 21,
                            height: 1.5,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoaderScreen()));
                          },
                          child: Container(
                            height: 37,
                            width: 120,
                            decoration: BoxDecoration(
                              color: const Color(0xffE4E4E4),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                                child: Text("Cancel",
                                    style: primaryFont.copyWith(
                                        fontSize: 20,
                                        color: const Color(0xff023047),
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(7),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3.20,
                                    spreadRadius: 0.50,
                                    color: Color.fromARGB(255, 101, 9, 171),
                                  )
                                ]),
                            child: Center(
                                child: Text("Delete",
                                    style: primaryFont.copyWith(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  //post
  Future<void> _showlogPost(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor),
                  borderRadius: BorderRadius.circular(6)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("assets/images/gallery.png")),
                    const SizedBox(
                      height: 15,
                    ),
                    Text("Are you sure you have\nthis uploaded post?",
                        textAlign: TextAlign.center,
                        style: primaryFont.copyWith(
                            fontSize: 21,
                            height: 1.5,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => const LoaderScreen()));
                          },
                          child: Container(
                            height: 37,
                            width: 120,
                            decoration: BoxDecoration(
                              color: const Color(0xffE4E4E4),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Center(
                                child: Text("Cancel",
                                    style: primaryFont.copyWith(
                                        fontSize: 20,
                                        color: const Color(0xff023047),
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 35,
                            width: 120,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(7),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3.20,
                                    spreadRadius: 0.50,
                                    color: Color.fromARGB(255, 101, 9, 171),
                                  )
                                ]),
                            child: Center(
                                child: Text("Yes",
                                    style: primaryFont.copyWith(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
