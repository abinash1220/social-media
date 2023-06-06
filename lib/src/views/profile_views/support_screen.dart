import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/profile_controller.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {

  final profileController = Get.find<ProfileController>();

  final subjectController = TextEditingController();
  final descriptionController = TextEditingController();

  var selectedImage;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SafeArea(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              primaryColor,
              secondaryColor
            ]
            ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: const Icon(Icons.arrow_back,color:Color(0xffF9FAFC),)),
              const SizedBox(width: 10,),
              Text("Support",
              style: primaryFont.copyWith(fontSize: 18,
              color:  Colors.white)),
            ],
          ),
        ),
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: ListView(
            children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Subject",
                                  style: primaryFont.copyWith(
                        fontSize: 12,
                        color: const Color(0xff023047),
                        fontWeight: FontWeight.w600)),
                        const SizedBox(height: 7,),
                        Container(
                          height: 45,
                          color: Colors.white,
                          child: TextField(
                            controller: subjectController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                          isDense: true,
                                          enabledBorder:const OutlineInputBorder(
                        borderSide:  BorderSide(
                                            color: Color(0xff023047),
                                          )),
                                          focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                                            color: primaryColor,
                                          )),
                                          hintText: "",
                                          labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                          )),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Descrption",
                                  style: primaryFont.copyWith(
                        fontSize: 12,
                        color: const Color(0xff023047),
                        fontWeight: FontWeight.w600)),
                        const SizedBox(height: 7,),
                        Container(
                          height: 85,
                          color: Colors.white,
                          child: TextField(
                            controller: descriptionController,
                            maxLines: 130,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                          isDense: true,
                                          enabledBorder:const OutlineInputBorder(
                        borderSide:  BorderSide(
                                            color: Color(0xff023047),
                                          )),
                                          focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                                            color: primaryColor,
                                          )),
                                          hintText: "",
                                          labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                          )),
                          ],
                        ),
                        const SizedBox(height: 10,),
                        Text("Please enter the details above. A member of our support\nstaff will respond as soon as possible.",
                                  style: primaryFont.copyWith(
                        fontSize: 12,
                        color: Colors.black54,
                        )),
                        const SizedBox(height: 30,),
                        Text("Attachments (Optional)",
                                  style: primaryFont.copyWith(
                        fontSize: 12,
                        color: const Color(0xff023047),
                        fontWeight: FontWeight.w600)),
                        const SizedBox(height: 7,),
                        InkWell(
                          onTap: () async {
                            final ImagePicker picker = ImagePicker();
                      final XFile? image =
                          await picker.pickImage(source: ImageSource.gallery);

                      setState(() {
                        selectedImage = image!.path;
                      });
                          },
                          child: Container(
                            height: 40,
                            width: size.width,
                            decoration: BoxDecoration(
                            color:const Color(0xffE4E4E4),
                            borderRadius: BorderRadius.circular(3),
                            ),
                            child: Center(child: Text("Add file or Drop files share",
                            style: primaryFont.copyWith(fontSize: 12,color:const Color(0xff95989A)))),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        selectedImage == null ? Container() :
                        Center(
                          child: Container(
                                height: 196,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 227, 225, 225),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.file(
                                  File(selectedImage),
                                  fit: BoxFit.contain,
                                ),
                              ),
                        ),
                        const SizedBox(height: 50,),
                        Obx(() => 
                          InkWell(
                            onTap: (){
                              //Get.back();
                              profileController.createSupport(
                                title: subjectController.text, 
                                content: descriptionController.text, 
                                image: selectedImage,
                                );
                            },
                            child: Container(
                              height: 36,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(3),
                                boxShadow: [
                                  BoxShadow(
                                    offset:const Offset(0, 1),
                                    blurRadius: 3.20,
                                    spreadRadius: 0.50,
                                    color: primaryColor,
                                  )
                                ]
                              ),
                              child: Center(
                                            child:profileController.loder == true ? const CircularProgressIndicator(color: Colors.white,) : Text("SAVE",
                                            style: primaryFont.copyWith(
                                              fontSize: 12,
                                              color: const Color(0xffF9FAFC),
                                              fontWeight: FontWeight.w500))),
                            ),
                          ),
                        ),
                        
            ],
          ),
        ),
    );
  }
}