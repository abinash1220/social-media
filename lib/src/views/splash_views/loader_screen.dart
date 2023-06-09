import 'package:flutter/material.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/views/splash_views/connect_first_account_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoaderScreen extends StatefulWidget {
  const LoaderScreen({super.key});

  @override
  State<LoaderScreen> createState() => _LoaderScreenState();
}

class _LoaderScreenState extends State<LoaderScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    redirectToNext();
  }

  redirectToNext() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const ConnectFirstAccountScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SpinKitCircle(
                  color: Colors.black,
                  size: 100.0,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text("Loading....",
                    style: primaryFont.copyWith(
                        fontSize: 18, color: const Color(0xff023047)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
