import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';

class listviewsugetion extends StatelessWidget {
  const listviewsugetion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: GetBuilder<PostsController>(builder: (profileController) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: profileController.postSuggestionsList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    children: [
                      Container(
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
    );
  }
}
