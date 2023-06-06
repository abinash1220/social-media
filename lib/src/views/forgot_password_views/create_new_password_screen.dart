import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/login_views/login_form_screen.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() => _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: const Icon(Icons.arrow_back,color: Color(0xff023047),size: 25,)),
        title: Text("Create New password",
        style: secondaryFont.copyWith(fontSize: 18,fontWeight: FontWeight.w600,
        color: const Color(0xff023047))),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),
          const Center(child: Image(image: AssetImage("assets/images/Group 1583.png"))),
          const SizedBox(height: 20,),
          Text("Your New Password Must Be Different\nfrom Previously Used Password.",
          textAlign: TextAlign.center,
          style: secondaryFont.copyWith(fontSize: 14,fontWeight: FontWeight.w500,
          color: const Color(0xff023047),height: 2)),
          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("New Password",
                                      style: primaryFont.copyWith(
                            fontSize: 18,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 45,
                              color: Colors.white,
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
                                              labelStyle: primaryFont.copyWith(color:const Color(0xff023047),fontSize: 12)),
                              )),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Confirm Password",
                                      style: primaryFont.copyWith(
                            fontSize: 18,
                            color: const Color(0xff023047),
                            fontWeight: FontWeight.w500)),
                            const SizedBox(height: 10,),
                            Container(
                              height: 45,
                              color: Colors.white,
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
                                              labelStyle: primaryFont.copyWith(color:const Color(0xff023047),fontSize: 12)),
                              )),
                              ],
                            ),
                          ),
                          Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20,top: 70),
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
                                          child: Text("Save",
                                          style: primaryFont.copyWith(
                                            fontSize: 18,
                                            color: const Color(0xffF9FAFC),
                                            fontWeight: FontWeight.w500))),
                          ),
                        ),
                      ),
          
        ],
      ),
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
                    const Image(image: AssetImage("assets/images/Group 1584.png")),
                     const SizedBox(height: 15,),
                     Text("Successful Password",
                                            style: primaryFont.copyWith(
                                  fontSize: 27,
                                  color: const Color(0xff023047),
                                  fontWeight: FontWeight.w600)),
                                  const SizedBox(height: 15,),
                                   Text("You can now use your new password\nto log in to your account!",
                                   textAlign: TextAlign.center,
                                            style: primaryFont.copyWith(
                                  fontSize: 15,
                                  color: const Color(0xff023047),
                                  fontWeight: FontWeight.w500)),
                                  
                                  Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20,top: 30,bottom: 20),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginFormScreen()));
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
                                        child: Text("Login",
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