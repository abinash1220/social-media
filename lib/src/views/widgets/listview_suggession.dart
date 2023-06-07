import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';
import 'package:social_media_marketing/src/views/photo_preview/photo_preview.dart';

class ListViewSuggessions extends StatefulWidget {
  const ListViewSuggessions({super.key});

  @override
  State<ListViewSuggessions> createState() => _ListViewSuggessionsState();
}

class _ListViewSuggessionsState extends State<ListViewSuggessions> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: GetBuilder<PostsController>(builder: (profileController) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: profileController.postSuggestionsList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: InkWell(
                    onTap: () {
                      Get.to(() => PhotoPreview(
                          images: profileController
                              .postSuggestionsList[index].images.first));
                    },
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
                ),
              );
            });
      }),
    );
  }
}
