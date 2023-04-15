import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';

class LoginFormScreen extends StatefulWidget {
  const LoginFormScreen({super.key});

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
               children: [
                Center(
                      child: Text("Log In",
                      style: primaryFont.copyWith(
                        fontSize: 26,
                        color: const Color(0xff023047),
                        fontWeight: FontWeight.w600))),
                        const Image(image: AssetImage("assets/images/Group 1577.png")),
                        Column(
                          children: [
                            Text("Email",
                      style: primaryFont.copyWith(
                        fontSize: 26,
                        color: const Color(0xff023047),
                        fontWeight: FontWeight.w600)),
                        Padding(
                          padding: const EdgeInsets.only(left: 20,right: 20),
                          child: Container(
                            height: 39,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: secondaryColor,
                              )
                            ),
                            child: TextField()),
                        ),
                          ],
                        )

               ],
        ),
      ),
    );
  }
}