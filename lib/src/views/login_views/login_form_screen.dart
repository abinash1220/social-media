 import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/forgot_password_views/forgot_password_screen.dart';
import 'package:social_media_marketing/src/views/splash_views/loader_screen.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60,top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
                 children: [
                  Center(
                        child: Text("Log In",
                        style: primaryFont.copyWith(
                          fontSize: 26,
                          color: const Color(0xff023047),
                          fontWeight: FontWeight.w600))),
                          const Image(image: AssetImage("assets/images/Group 1577.png")),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Enter Mobile Number or Email",
                                      style: primaryFont.copyWith(
                            fontSize: 16,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 45,
                              child: TextField(
                                    decoration: InputDecoration(
                                              isDense: true,
                                              enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                                color: secondaryColor,
                                              )),
                                              focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                                color: primaryColor,
                                              )),
                                              hintText: "Enter Mobile Number or Email",
                                              labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                              )),
                              ],
                            ),
                          ),
                           Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Password",
                                      style: primaryFont.copyWith(
                            fontSize: 16,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 45,
                              child: TextField(
                                    decoration: InputDecoration(
                                              isDense: true,
                                              enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                                color: secondaryColor,
                                              )),
                                              focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                                color: primaryColor,
                                              )),
                                              hintText: "",
                                              suffixIcon:const Icon(Icons.remove_red_eye,color: Color(0xff023047),),
                                              labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                              )),
                              Padding(
                            padding: const EdgeInsets.only(right: 20,top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: (){
                                    Get.to(const ForgotPassWordScreen());
                                  },
                                  child: Text("Forgot Password",
                                              style: primaryFont.copyWith(
                                    fontSize: 10,
                                    color: const Color(0xff023047),
                                    fontWeight: FontWeight.w500)),
                                ),
                              ],
                            ),
                          ),
                              ],
                            ),
                          ),
                          
                           Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 30),
                        child: InkWell(
                          onTap: (){
                            _showlog(context);
                          },
                          child: Container(
                            height: 41,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow:const [
                                BoxShadow(
                                  offset: Offset(0, 1),
                                  blurRadius: 3.20,
                                  spreadRadius: 0.50,
                                  color: Color.fromARGB(255, 247, 114, 158),
                                )
                              ]
                            ),
                            child: Center(
                                          child: Text("Log in",
                                          style: primaryFont.copyWith(
                                            fontSize: 18,
                                            color: const Color(0xffF9FAFC),
                                            fontWeight: FontWeight.w500))),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Connect support ",
                                                style: primaryFont.copyWith(
                                      fontSize: 14,
                                      color: primaryColor,
                                      fontWeight: FontWeight.w500)),
                                      Text("if you can't log in",
                                                style: primaryFont.copyWith(
                                      fontSize: 14,
                                      color: const Color(0xff023047),
                                      fontWeight: FontWeight.w500)),
                        ],
                      ),
                 ],
          ),
        ),
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          //  title: const Text('Basic dialog title'),
          content:  Container(
            height: 400,
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor)
            ),
            child: const Image(image: AssetImage("assets/images/Group 1578.png"))),
         
        );
      },
    );
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
                    const Image(image: AssetImage("assets/images/Group 1578.png")),
                     const SizedBox(height: 15,),
                     Text("Success",
                                            style: primaryFont.copyWith(
                                  fontSize: 27,
                                  color: const Color(0xff023047),
                                  fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 15,),
                                   Text("Congratulations!",
                                            style: primaryFont.copyWith(
                                  fontSize: 15,
                                  color: const Color(0xff023047),
                                  fontWeight: FontWeight.w500)),
                                   Text("Your account has been Login.",
                                            style: primaryFont.copyWith(
                                  fontSize: 15,
                                  color: const Color(0xff023047),
                                  fontWeight: FontWeight.w500)),
                                  Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoaderScreen()));
                        },
                        child: Container(
                          height: 41,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(20),
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
                                        child: Text("Continue",
                                        style: primaryFont.copyWith(
                                          fontSize: 22,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500))),
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          );
        });
  }
}