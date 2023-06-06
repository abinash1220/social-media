import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';
import 'package:social_media_marketing/src/views/home_views/create_post.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class Gridviewsugetion extends StatelessWidget {
  Gridviewsugetion({super.key});
  final Controller = Get.put(bottombarcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SafeArea(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [primaryColor, secondaryColor]),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xffF9FAFC),
                        )),
                    Text("Suggestion",
                        style: primaryFont.copyWith(
                            fontSize: 18, color: Colors.white)),
                    Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.search,
                          size: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
      body: GetBuilder<PostsController>(builder: (profileController) {
        return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            physics: const BouncingScrollPhysics(),
            itemCount: profileController.postSuggestionsList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 74,
                        width: 70,
                        child: Image.network(profileController
                            .postSuggestionsList[index].images.first),
                      ),
                      Text(profileController.postSuggestionsList[index].title)
                    ],
                  ),
                ),
              );
            });
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const CreateScreen());
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
