import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';
import 'package:social_media_marketing/src/views/home_views/create_post.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';
import 'package:social_media_marketing/src/views/widgets/post_menu/post_menu_options.dart';

class SearchPostScreen extends StatefulWidget {
  const SearchPostScreen({super.key});

  @override
  State<SearchPostScreen> createState() => _SearchPostScreenState();
}

class _SearchPostScreenState extends State<SearchPostScreen> {
  var searchController = TextEditingController();
  final Controller = Get.put(bottombarcontroller());

  final postsController = Get.find<PostsController>();

  @override
  void initState() {
    super.initState();
    searchController.addListener(searchPosts);
  }

  searchPosts() {
    if (searchController.text.length > 1) {
      postsController.getPostByKeyWord(searchController.text);
    } else {
      postsController.searchPostList.clear();
      postsController.update();
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: SafeArea(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [primaryColor, secondaryColor]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                        isDense: true,
                        hintText: 'Search Posts',
                        suffixIcon: Image.asset(
                          'assets/icons/searchpostimage1.png',
                          height: 25,
                        ),
                        border: const OutlineInputBorder()),
                  ),
                ),
              ),
            ),
          )),
      body: GetBuilder<PostsController>(builder: (_) {
        return postsController.searchPostList.isNotEmpty
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: postsController.searchPostList.length,
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
                                            .searchPostList[index].imagePath,
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
                                                .searchPostList[index].title,
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
                                                .searchPostList[index].content,
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
                                                .searchPostList[index].meta,
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
                                      postsController.searchPostList[index])
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                })
            : Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  // Row(
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.only(left: 30),
                  //       child: Text(
                  //         'Recent Search',
                  //         style: TextStyle(color: Colors.grey[400]),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Image.asset('assets/icons/searchpostimage2.png'),
                      ),
                    ],
                  )
                ],
              );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(CreateScreen());
        },
        backgroundColor: const Color(0xff75032D),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: const Color(0xffED075C),
          icons: iconList,
          activeColor: Colors.white,
          activeIndex: Controller.Getindex(),
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.sharpEdge,
          leftCornerRadius: 0,
          rightCornerRadius: 0,
          onTap: (index) => Get.offAll(HomeBottomNavgationBar(
                index: index,
              ))),
    );
  }
}
