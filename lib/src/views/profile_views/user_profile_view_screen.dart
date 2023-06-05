import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/controllers/profile_controller.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';

class UserProfileViewScreen extends StatefulWidget {
  const UserProfileViewScreen({super.key});

  @override
  State<UserProfileViewScreen> createState() => _UserProfileViewScreenState();
}

class _UserProfileViewScreenState extends State<UserProfileViewScreen> {

  final Controller = Get.put(bottombarcontroller());
  
  final profileController = Get.find<ProfileController>();

  final userNameController = TextEditingController();

  bool isEnable = false;

  var selectedImage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileController.getUserProfile();
    
  }

  setdefault(){
    userNameController.text = profileController.userdata.first.name;
  }

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
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: const Icon(Icons.arrow_back,color:Color(0xffF9FAFC),)),
              const SizedBox(width: 10,),
              Text("User Profile",
              style: primaryFont.copyWith(fontSize: 18,
              color:  Colors.white)),
            ],
          ),
        ),
          ),
        )),
        body: Padding(
          padding: const EdgeInsets.only(top: 25,left: 15,right: 15),
          child: GetBuilder<ProfileController>(
            builder: (_) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        profileController.userdata.isEmpty ?
                        Image(image: AssetImage("assets/images/Ellipse 283.png"),
                        height: 100,
                       width: 100,
                       fit: BoxFit.cover,
                        ) : 
                       profileController.userdata.first.profilePicture == null ? 
                       Image(image: AssetImage("assets/images/Ellipse 283.png",),
                       height: 100,
                       width: 100,
                       fit: BoxFit.cover,
                       ) :
                       ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                         child: Image.network(profileController.userdata.first.profilePicture,
                         height: 110,
                         width: 110,
                         fit: BoxFit.fill,
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.only(left: 90,top: 75),
                          child: InkWell(
                            onTap: () async {
                               final ImagePicker picker = ImagePicker();
                      final XFile? image =
                          await picker.pickImage(source: ImageSource.gallery);

                      setState(() {
                        selectedImage = image!.path;
                      });

                        profileController.updateImage(image: selectedImage);

                            },
                            child: Image(image: AssetImage("assets/images/Group 1597.png"))),
                        )
                        ])),
                        SizedBox(height: 20,),
                         Center(
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                              profileController.userdata.isEmpty ? const Text("") : Text(profileController.userdata.first.name,
                                      style: primaryFont.copyWith(
                                      fontSize: 26,
                                      color: const Color(0xff023047),
                                      fontWeight: FontWeight.w500)),
                                      const SizedBox(width: 3,),
                                      InkWell(
                                        onTap: (){
                                          setState(() {
                                            isEnable = true;
                                            setdefault();
                                          });
                                        },
                                        child:const Icon(Icons.edit)),
                             ],
                           ),
                         ),
                         const SizedBox(height: 40,),
                         if(isEnable == true)
                        Container(
                          height: 45,
                          color: Colors.white,
                          child: TextField(
                                controller: userNameController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                          isDense: true,
                                          enabledBorder:const OutlineInputBorder(
                                          borderSide:  BorderSide(
                                            color: Color(0xffffffff),
                                          )),
                                          focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: primaryColor,
                                          )),
                                          hintText:"",
                                          labelStyle: primaryFont.copyWith(color:const Color(0xff023047))),
                          )),
                                const SizedBox(height: 20,),
                         Text("Email",
                                style: primaryFont.copyWith(
                                fontSize: 16,
                                color: const Color(0xff023047),
                                fontWeight: FontWeight.w500)),
                                const SizedBox(height: 10,),
                                Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                           profileController.userdata.isEmpty ? const Text("") : Text(profileController.userdata.first.email,
                                                              style: primaryFont.copyWith(
                                                              fontSize: 13,
                                                              color:  Colors.black,
                                                              fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Text("Phone Number",
                                style: primaryFont.copyWith(
                                fontSize: 16,
                                color: const Color(0xff023047),
                                fontWeight: FontWeight.w500)),
                                const SizedBox(height: 10,),
                                Container(
                                  height: 36,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(2)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                           profileController.userdata.isEmpty ? Text("") : Text(profileController.userdata.first.mobile,
                                                              style: primaryFont.copyWith(
                                                              fontSize: 13,
                                                              color:  Colors.black,
                                                              fontWeight: FontWeight.w500)),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 70,),
                                if(isEnable == true)
                                InkWell(
                            onTap: (){
                              profileController.updateName(name: userNameController.text);
                              setState(() {
                                isEnable = false;
                              });
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
                                            child:Text("SAVE",
                                            style: primaryFont.copyWith(
                                              fontSize: 12,
                                              color: const Color(0xffF9FAFC),
                                              fontWeight: FontWeight.w500))),
                            ),
                          ),
                                 
                ],
              );
            }
          ),
        ),
        floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        backgroundColor: Colors.red,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          backgroundColor: secondaryColor,
          icons: iconList,
          activeColor: Colors.white,
          activeIndex: Controller.Getindex(),
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.sharpEdge,
          leftCornerRadius: 0,
          rightCornerRadius: 0,
          onTap: (index) => Get.offAll(HomeBottomNavgationBar(index: index,))),
    );
  }
}