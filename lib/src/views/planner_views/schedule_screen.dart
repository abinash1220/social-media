import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';
import 'package:social_media_marketing/src/views/recent_post_views/insights_screen.dart';

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
      padding: const EdgeInsets.only(left: 20,right: 20,),
      child:GetBuilder<PostsController>(
        builder: (_) {
          return ListView.builder(
                               shrinkWrap: true,
                               itemCount: postsController.getPostsData.length,
                               itemBuilder: (context, index){
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: Container(
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
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(3),
                                                child: Image.network(
                                                postsController.getPostsData[index].imagePath,
                                                height: 100,
                                                width: 100,
                                                fit: BoxFit.cover,
                                                ),
                                              ),
                                              const SizedBox(width: 10,),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                children: [
                                                  Text(postsController.getPostsData[index].title,
                                                    style: primaryFont.copyWith(fontSize: 14,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w600
                                                    ),
                                                  ),
                                                  Text(postsController.getPostsData[index].content,
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
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  _showlogPost(context);
                                                },
                                                child: Icon(Icons.more_vert))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
                            );
        }
      ));
  }


  Future<void> _showlog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(6)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("assets/images/dlt.png")),
                     const SizedBox(height: 15,),
                                   Text("Are you sure you want\nto delete this post?",
                                   textAlign: TextAlign.center,
                                            style: primaryFont.copyWith(
                                  fontSize: 21,
                                  height: 1.5,
                                  color: const Color(0xff023047),
                                  fontWeight: FontWeight.w500)),
                                    const SizedBox(height: 25,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                       InkWell(
                                        onTap: (){
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
                                       onTap: (){
                                           Get.back();
                                              },
                                      child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(7),
                            boxShadow:const [
                              BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 3.20,
                                spreadRadius: 0.50,
                                color: Color.fromARGB(255, 101, 9, 171),
                              )
                            ]
                          ),
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
                borderRadius:
                    BorderRadius.circular(6.0)), //this right here
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(6)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("assets/images/gallery.png")),
                     const SizedBox(height: 15,),
                                   Text("Are you sure you have\nthis uploaded post?",
                                   textAlign: TextAlign.center,
                                            style: primaryFont.copyWith(
                                  fontSize: 21,
                                  height: 1.5,
                                  color: const Color(0xff023047),
                                  fontWeight: FontWeight.w500)),
                                    const SizedBox(height: 25,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                       InkWell(
                                        onTap: (){
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
                                       onTap: (){
                                           Get.back();
                                              },
                                      child: Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(7),
                            boxShadow:const [
                              BoxShadow(
                                offset: Offset(0, 1),
                                blurRadius: 3.20,
                                spreadRadius: 0.50,
                                color: Color.fromARGB(255, 101, 9, 171),
                              )
                            ]
                          ),
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