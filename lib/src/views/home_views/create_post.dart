import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:detectable_text_field/detector/sample_regular_expressions.dart';
import 'package:detectable_text_field/functions.dart';
import 'package:detectable_text_field/widgets/detectable_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/controllers/posts_controller.dart';
import 'package:social_media_marketing/src/views/profile_views/add_social_media_screen.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final Controller = Get.put(bottombarcontroller());

  final postController = Get.find<PostsController>();

  var selectedImage;

  var selectedDate;

  var titleTextController = TextEditingController();

  var contentTextController = TextEditingController();

  DateTime _date2 = DateTime.now();
  TimeOfDay timeSelected = TimeOfDay.now();

  _selectedDate2(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _date2,
        firstDate: DateTime.now(),
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: secondaryColor, // <-- SEE HERE
                onPrimary: Colors.white, // <-- SEE HERE
                onSurface: primaryColor, // <-- SEE HERE
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: primaryColor, // button text color
                ),
              ),
            ),
            child: child!,
          );
        },
        lastDate: DateTime(2040));
    if (picked != null && picked != _date2) {
      print("Date selected ${_date2.toString()}");
      setState(() {
        _date2 = picked;
        selectedDate = "${picked.day}-${picked.month}-${picked.year}";
      });
      _selectTime(context);
    }
  }

  _selectTime(BuildContext context) async {
    TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: timeSelected,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: secondaryColor, // <-- SEE HERE
                onPrimary: Colors.white, // <-- SEE HERE
                onSurface: primaryColor, // <-- SEE HERE
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: primaryColor, // button text color
                ),
              ),
            ),
            child: child!,
          ),
        );
      },
    );
    if (picked != null)
      setState(() {
        timeSelected = picked;
        var timeString = "${timeSelected.hour}:${timeSelected.minute}";
        selectedDate = selectedDate + " " + timeString;
        ;
      });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    const Image(image: AssetImage("assets/icons/lg.png")),
                    Text("Create",
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: WillPopScope(
          onWillPop: () {
            return _showMyDialog();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Add Accounts",
                        style: primaryFont.copyWith(
                          fontSize: 16,
                          color: const Color(0xff023047),
                        )),
                    InkWell(
                      onTap: () {
                        Get.to(() => AddSocialMediaScreen());
                      },
                      child: Container(
                        child: Image.asset(
                          'assets/icons/floaticon.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/icons/facebook image.png'),
                    Image.asset('assets/icons/instaimage.png'),
                    Image.asset('assets/icons/twitterimage.png'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 17,
                          width: 42,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Colors.black,
                              ),
                              color: Colors.white),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Public",
                                  style: primaryFont.copyWith(
                                    fontSize: 8,
                                    color: const Color(0xff023047),
                                  )),
                            ],
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 1),
                          blurRadius: 3.20,
                          spreadRadius: 0.50,
                          color: Color.fromARGB(255, 199, 199, 199),
                        )
                      ],
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7),
                          topRight: Radius.circular(7),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: TextField(
                            controller: titleTextController,
                            style: primaryFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                            decoration: const InputDecoration.collapsed(
                                hintText: "Title",
                                hintStyle: TextStyle(color: Colors.black38)),
                          )),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: DetectableTextField(
                            controller: contentTextController,
                            decoration: const InputDecoration.collapsed(
                                hintText: "Type.."),
                            detectionRegExp: detectionRegExp()!,
                            maxLines: 5,
                            decoratedStyle: primaryFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.blue,
                            ),
                            basicStyle: primaryFont.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10),
                        child: selectedImage == null
                            ? InkWell(
                                onTap: () async {
                                  final ImagePicker picker = ImagePicker();
                                  final XFile? image = await picker.pickImage(
                                      source: ImageSource.gallery);

                                  setState(() {
                                    selectedImage = image!.path;
                                  });
                                },
                                child: Container(
                                  width: size.width,
                                  height: 196,
                                  decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 227, 225, 225),
                                      borderRadius: BorderRadius.circular(10)),
                                  alignment: Alignment.center,
                                  child: const Icon(Icons.add_a_photo),
                                ),
                              )
                            : Container(
                                width: size.width,
                                height: 196,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 227, 225, 225),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.file(
                                  File(selectedImage),
                                  fit: BoxFit.contain,
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(4)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/phovideoimage.png',
                              height: 18,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text("Photo / Video",
                                style: primaryFont.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffF9FAFC),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                    ),
                    // Container(
                    //   height: 30,
                    //   width: 100,
                    //   decoration: BoxDecoration(
                    //       color: primaryColor,
                    //       borderRadius: BorderRadius.circular(4)),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Image.asset(
                    //         'assets/icons/logation.png',
                    //         height: 18,
                    //       ),
                    //       const SizedBox(
                    //         width: 4,
                    //       ),
                    //       Text("Location",
                    //           style: primaryFont.copyWith(
                    //             fontSize: 10,
                    //             fontWeight: FontWeight.w400,
                    //             color: const Color(0xffF9FAFC),
                    //           )),
                    //     ],
                    //   ),
                    // ),
                    InkWell(
                      onTap: () {
                        _selectedDate2(context);
                      },
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(4)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icons/shecduleimage.png',
                              height: 18,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(selectedDate ?? "Schedule",
                                style: primaryFont.copyWith(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xffF9FAFC),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Obx(
                  () => postController.isLoading.isTrue
                      ? Container(
                          height: 36,
                          width: size.width,
                          decoration: BoxDecoration(
                              color: const Color(0xffED075C),
                              borderRadius: BorderRadius.circular(4)),
                          child: const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            if (titleTextController.text.isEmpty) {
                              Get.rawSnackbar(
                                  messageText: Text(
                                    "Enter title to Upload",
                                    style: primaryFont.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Colors.red);
                            } else if (contentTextController.text.isEmpty) {
                              Get.rawSnackbar(
                                  messageText: Text(
                                    "Enter content to Upload",
                                    style: primaryFont.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Colors.red);
                            } else if (selectedImage == null) {
                              Get.rawSnackbar(
                                  messageText: Text(
                                    "Select an image/video to Upload",
                                    style: primaryFont.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                  backgroundColor: Colors.red);
                            } else {
                              final List<String> detections = extractDetections(
                                  contentTextController.text, hashTagRegExp);

                              String tags = "";

                              for (var i = 0; i < detections.length; i++) {
                                tags = "$tags,${detections[i]}";
                              }

                              postController.uploadPost(
                                  title: titleTextController.text,
                                  description: contentTextController.text,
                                  tags: tags,
                                  status: selectedDate == null
                                      ? "publish"
                                      : "scheduled",
                                  date:
                                      "${_date2.year}-${_date2.month}-${_date2.day} ${timeSelected.hour}:${timeSelected.minute}",
                                  media: File(selectedImage));
                            }
                          },
                          child: Container(
                            height: 36,
                            width: size.width,
                            decoration: BoxDecoration(
                                color: const Color(0xffED075C),
                                borderRadius: BorderRadius.circular(4)),
                            child: Center(
                              child: Text("Post",
                                  style: primaryFont.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xffF9FAFC),
                                  )),
                            ),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xffED075C),
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

  _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Draft This Post'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Draft this post for Later use'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Don\'t'),
              onPressed: () {
                // Navigator.of(context).pop();
                Get.off(() => HomeBottomNavgationBar());
              },
            ),
            TextButton(
              child: const Text('Draft'),
              onPressed: () {
                if (titleTextController.text.isEmpty) {
                  Get.rawSnackbar(
                      messageText: Text(
                        "Enter title to Draft",
                        style: primaryFont.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.red);
                } else if (contentTextController.text.isEmpty) {
                  Get.rawSnackbar(
                      messageText: Text(
                        "Enter content to Draft",
                        style: primaryFont.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.red);
                } else if (selectedImage == null) {
                  Get.rawSnackbar(
                      messageText: Text(
                        "Select an image/video to Draft",
                        style: primaryFont.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.red);
                } else {
                  final List<String> detections = extractDetections(
                      contentTextController.text, hashTagRegExp);

                  String tags = "";

                  for (var i = 0; i < detections.length; i++) {
                    tags = "$tags,${detections[i]}";
                  }

                  postController.uploadPost(
                      title: titleTextController.text,
                      description: contentTextController.text,
                      tags: tags,
                      status: "Darft",
                      date: "${_date2.year}-${_date2.month}-${_date2.day}",
                      media: File(selectedImage));
                }
              },
            ),
          ],
        );
      },
    );
  }
}
