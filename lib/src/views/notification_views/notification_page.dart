import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
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
              Text("Notification",
              style: primaryFont.copyWith(fontSize: 18,
              color:  Colors.white)),
            ],
          ),
        ),
          ),
        )), 
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {},
            child: ListTile(
                leading: CircleAvatar(radius: 40,
                  backgroundImage: AssetImage('assets/images/images.jpeg'),
                ),
                title: Row(
                  children: [
                    Text("Riyas",style: TextStyle(fontWeight: FontWeight.bold),),Text(' react to your post')
                  ],
                ),
                subtitle: Text('$index Hours ago'),
                trailing: Image.asset('assets/images/Group 1577.png',height: 200,)),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 30,
          );
        },
      ),);
  }
}