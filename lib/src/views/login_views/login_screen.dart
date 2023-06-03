import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/login_views/login_form_screen.dart';
import 'package:social_media_marketing/src/views/register_views/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Center(
                      child: Text("Grow your audiencce",
                          style: primaryFont.copyWith(
                              fontSize: 24,
                              color: const Color(0xff023047),
                              fontWeight: FontWeight.w500))),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Manage all your social media channels in one place",
                      style: primaryFont.copyWith(
                        fontSize: 12,
                        color: const Color(0xff023047),
                      )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Image(image: AssetImage("assets/images/Group 1259.png")),
              const SizedBox(
                height: 30,
              ),
              Text(
                  "1. Connect Multiple social channels\n2. Publish and Schedule to all channels\n3. See performance with a simple score",
                  style: primaryFont.copyWith(
                    fontSize: 16,
                    height: 2,
                    color: const Color(0xff023047),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginFormScreen()));
                  },
                  child: Container(
                    height: 41,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: secondaryColor),
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
                        child: Text("Log in",
                            style: primaryFont.copyWith(
                                fontSize: 18,
                                color: const Color(0xffFF5895),
                                fontWeight: FontWeight.w500))),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  child: Container(
                    height: 41,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: const Color(0xff023047)),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 1),
                            blurRadius: 3.20,
                            spreadRadius: 0.50,
                            color: Color(0xff023047),
                          )
                        ]),
                    child: Center(
                        child: Text("Sign up",
                            style: primaryFont.copyWith(
                                fontSize: 18,
                                color: const Color(0xff023047),
                                fontWeight: FontWeight.w500))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
