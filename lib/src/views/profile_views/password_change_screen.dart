import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/controllers/profile_controller.dart';
import 'package:social_media_marketing/src/views/profile_views/profile_view_screen.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';
import 'package:social_media_marketing/src/views/widgets/button.dart';

class PassWordChangeScreen extends StatefulWidget {
  const PassWordChangeScreen({super.key});

  @override
  State<PassWordChangeScreen> createState() => _PassWordChangeScreenState();
}

class _PassWordChangeScreenState extends State<PassWordChangeScreen> {
  final Controller = Get.put(bottombarcontroller());

  var oldPasswordController = TextEditingController();
  var newPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isPasswordVisible = false;
  bool isPasswordVisible2 = false;
  bool isPasswordVisible3 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xffF9FAFC),
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text("Password Change",
                        style: primaryFont.copyWith(
                            fontSize: 18, color: Colors.white)),
                  ],
                ),
              ),
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create New Password",
                  style: primaryFont.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff023047))),
              const SizedBox(
                height: 10,
              ),
              Text(
                  "Your new password must be different\nfrom previous used passwords.",
                  style: primaryFont.copyWith(
                      fontSize: 18,
                      color: const Color.fromARGB(255, 111, 112, 112))),
              const SizedBox(
                height: 25,
              ),
              Text("Old Password",
                  style: primaryFont.copyWith(
                      fontSize: 12,
                      color: const Color(0xff023047),
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  controller: oldPasswordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Password";
                    } else if (value.length < 8) {
                      return "Password must contain 8 character";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: isPasswordVisible,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      isDense: true,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xff023047),
                      )),
                      focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: primaryColor,
                      )),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                      )),
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: isPasswordVisible
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                      hintText: "Enter Your Password",
                      labelStyle:
                          primaryFont.copyWith(color: const Color(0xff023047))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text("New Password",
                  style: primaryFont.copyWith(
                      fontSize: 12,
                      color: const Color(0xff023047),
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  controller: newPasswordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Password";
                    } else if (value.length < 8) {
                      return "Password must contain 8 character";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: isPasswordVisible2,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      isDense: true,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xff023047),
                      )),
                      focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: primaryColor,
                      )),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                      )),
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isPasswordVisible2 = !isPasswordVisible2;
                            });
                          },
                          child: isPasswordVisible2
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                      hintText: "Enter Your Password",
                      labelStyle:
                          primaryFont.copyWith(color: const Color(0xff023047))),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Text("Confirm Password",
                  style: primaryFont.copyWith(
                      fontSize: 12,
                      color: const Color(0xff023047),
                      fontWeight: FontWeight.w500)),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: TextFormField(
                  controller: confirmPasswordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your Password";
                    } else if (value.length < 8) {
                      return "Password must contain 8 character";
                    } else if (value != newPasswordController.text) {
                      return "Password must match with new password";
                    }
                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: isPasswordVisible3,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      isDense: true,
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0xff023047),
                      )),
                      focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                      )),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: primaryColor,
                      )),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.red,
                      )),
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isPasswordVisible3 = !isPasswordVisible3;
                            });
                          },
                          child: isPasswordVisible3
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off)),
                      hintText: "Enter Your Password",
                      labelStyle:
                          primaryFont.copyWith(color: const Color(0xff023047))),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Get.off(const ProfileViewScreen());
                    },
                    child: Button(
                      color: const Color.fromARGB(255, 189, 186, 186),
                      height: 38,
                      width: 175,
                      text: "Cancel",
                      borderRadius: 3,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        Get.find<ProfileController>().changePassword(
                            newPassword: newPasswordController.text,
                            oldPassword: oldPasswordController.text);
                      } else {
                        Get.rawSnackbar(
                            messageText: Text(
                              "Enter Correct Values before continue",
                              style: primaryFont.copyWith(
                                color: Colors.white,
                              ),
                            ),
                            backgroundColor: Colors.red);
                      }
                    },
                    child: Button(
                      color: primaryColor,
                      height: 38,
                      width: 175,
                      text: "SAVE",
                      borderRadius: 3,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: Colors.red,
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
