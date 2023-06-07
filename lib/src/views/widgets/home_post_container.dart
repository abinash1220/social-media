import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/home_views/create_post.dart';

class Post_container extends StatelessWidget {
  const Post_container({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width,
      decoration: BoxDecoration(
          color: const Color(0xFFA35ED8),
          borderRadius: BorderRadius.circular(2)),
      child: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage('assets/icons/Group 1103.png'),
            ),
            Text("New Post Generate Just Approve Post Uploads.",
                style: primaryFont.copyWith(fontSize: 10, color: Colors.white)),
            InkWell(
              onTap: () {
                Get.to(() => CreateScreen());
              },
              child: Container(
                width: 60,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                    child: Text("Post",
                        style: primaryFont.copyWith(
                            fontSize: 10, color: primaryColor))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
