import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';
import 'package:social_media_marketing/src/views/widgets/post_menu/post_menu_options.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  final postsController = Get.find<PostsController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: GetBuilder<PostsController>(builder: (_) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: postsController.getPostsData.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Stack(
                    children: [
                      Container(
                        width: size.width,
                        height: 119,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
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
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(3),
                                    child: Image.network(
                                      postsController
                                          .getPostsData[index].imagePath,
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        width: size.width - 230,
                                      
                                        child: Text(
                                          postsController
                                              .getPostsData[index].title,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: primaryFont.copyWith(
                                              fontSize: 14,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Container(
                                        width: size.width - 250,
                                        child: Text(
                                          postsController
                                              .getPostsData[index].content,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: primaryFont.copyWith(
                                              fontSize: 9,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5),
                                        ),
                                      ),
                                      Container(
                                        width: size.width - 250,
                                        child: Text(
                                          postsController
                                              .getPostsData[index].meta,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: primaryFont.copyWith(
                                              fontSize: 9,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w500),
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
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 0,
                        child: Row(
                          children: [
                            postMenuOptions(
                                getPostsData:
                                    postsController.getPostsData[index])
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              });
        }));
  }
}
