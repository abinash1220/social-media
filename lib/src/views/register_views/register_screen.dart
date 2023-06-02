import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/auth_controller.dart';
import 'package:social_media_marketing/src/models/register_model.dart';
import 'package:social_media_marketing/src/views/register_views/otp_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final authController = Get.find<AuthController>();

  final _formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var mailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var mobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Center(
                  child: Text("Sign Up Now",
                      style: primaryFont.copyWith(
                          fontSize: 26,
                          color: const Color(0xff023047),
                          fontWeight: FontWeight.w600))),
              Center(
                  child: Text("Please fill the details and create account",
                      style: primaryFont.copyWith(
                          fontSize: 13,
                          color: const Color(0xff023047),
                          fontWeight: FontWeight.w400))),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 15),
                child: Image(
                    height: 170,
                    image: AssetImage("assets/images/Group 1782.png")),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name",
                        style: primaryFont.copyWith(
                            fontSize: 16,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Name Can't be Empty";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          hintText: "Enter Your Name",
                          labelStyle: primaryFont.copyWith(
                              color: const Color(0xff023047))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mail",
                        style: primaryFont.copyWith(
                            fontSize: 16,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email Can't be Empty";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          hintText: "Enter Your Email",
                          labelStyle: primaryFont.copyWith(
                              color: const Color(0xff023047))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Password",
                        style: primaryFont.copyWith(
                            fontSize: 16,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your Password";
                        } else if (value.length < 8) {
                          return "Password must contain 8 character";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          hintText: "Enter Your Password",
                          labelStyle: primaryFont.copyWith(
                              color: const Color(0xff023047))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Confirm Password",
                        style: primaryFont.copyWith(
                            fontSize: 16,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Confirm your Password";
                        } else if (value != passwordController.text) {
                          return "password doesn't match";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          hintText: "Confirm Your Password",
                          labelStyle: primaryFont.copyWith(
                              color: const Color(0xff023047))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Mobile Number",
                        style: primaryFont.copyWith(
                            fontSize: 16,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: mobileNumberController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Mobile Number";
                        } else if (value.length != 10) {
                          return "Enter a valid mobile number";
                        }
                        return null;
                      },
                      autovalidateMode: AutovalidateMode.onUserInteraction,
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
                          hintText: "Enter Mobile Number",
                          labelStyle: primaryFont.copyWith(
                              color: const Color(0xff023047))),
                    ),
                  ],
                ),
              ),
              Obx(
                () => Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 30,
                  ),
                  child: authController.isLoading.isTrue
                      ? Container(
                          height: 41,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 3.20,
                                  spreadRadius: 0.50,
                                  color: Color.fromARGB(255, 247, 114, 158),
                                )
                              ]),
                          child: Center(
                              child: Text("Sign up",
                                  style: primaryFont.copyWith(
                                      fontSize: 18,
                                      color: const Color(0xffF9FAFC),
                                      fontWeight: FontWeight.w500))),
                        )
                      : InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              RegisterModel registerModel = RegisterModel(
                                  email: mailController.text,
                                  mobile: mobileNumberController.text,
                                  name: nameController.text,
                                  password: passwordController.text,
                                  passwordConfirmation:
                                      passwordController.text);
                              authController.registerUser(registerModel);
                            }
                          },
                          child: Container(
                            height: 41,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: const [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3.20,
                                    spreadRadius: 0.50,
                                    color: Color.fromARGB(255, 247, 114, 158),
                                  )
                                ]),
                            child: Center(
                                child: Text("Sign up",
                                    style: primaryFont.copyWith(
                                        fontSize: 18,
                                        color: const Color(0xffF9FAFC),
                                        fontWeight: FontWeight.w500))),
                          ),
                        ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('''Already have an account? ''',
                        style: primaryFont.copyWith(
                            fontSize: 14,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                    Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 14,
                          color: secondaryColor,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
