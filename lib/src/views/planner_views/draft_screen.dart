import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';
import 'package:social_media_marketing/src/views/widgets/post_menu/post_menu_options.dart';

class DraftScreen extends StatefulWidget {
  const DraftScreen({super.key});

  @override
  State<DraftScreen> createState() => _DraftScreenState();
}

class _DraftScreenState extends State<DraftScreen> {
  final postsController = Get.find<PostsController>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: GetBuilder<PostsController>(builder: (_) {
          return ListView.builder(
              shrinkWrap: true,
              itemCount: postsController.getPostsData.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
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
                                      Text(
                                        postsController
                                            .getPostsData[index].title,
                                        style: primaryFont.copyWith(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        postsController
                                            .getPostsData[index].content,
                                        style: primaryFont.copyWith(
                                            fontSize: 9,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            height: 1.5),
                                      ),
                                      Text(
                                        postsController.getPostsData[index].meta,
                                        style: primaryFont.copyWith(
                                            fontSize: 9,
                                            color: Colors.blue,
                                            fontWeight: FontWeight.w500),
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
                              postMenuOptions(
                                getPostsData:
                                    postsController.getPostsData[index],
                              )
                            ]),
                      ),
                    ));
              });
        }));
  }
}
