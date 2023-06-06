import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
import 'package:social_media_marketing/src/controllers/planners_controller.dart';
import 'package:social_media_marketing/src/views/home_views/create_post.dart';
import 'package:social_media_marketing/src/views/widgets/bottumnav-bar.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class InSightsScreen extends StatefulWidget {
  const InSightsScreen({super.key});

  @override
  State<InSightsScreen> createState() => _InSightsScreenState();
}

class _InSightsScreenState extends State<InSightsScreen> {
  final Controller = Get.put(bottombarcontroller());

  final plannerController = Get.find<PlannersController>();

  List<_SalesData> data = [
    _SalesData('Mon'.tr, 5000),
    _SalesData('Tue'.tr, 3000),
    _SalesData('Wed'.tr, 4000),
    _SalesData('Thu'.tr, 7000),
    _SalesData('Fri'.tr, 3000)
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
          padding: const EdgeInsets.only(left: 15,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: const Icon(Icons.arrow_back,color:Color(0xffF9FAFC),)),
              Text("Insights",
              style: primaryFont.copyWith(fontSize: 18,
              color:  Colors.white)),
              InkWell(
                onTap: (){
                  showModalBottomSheet(
                    shape:const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(14)),
                    ),
                    context: context, 
                    builder: (BuildContext context) {
                    return Container(
                      height: 350,
                      decoration:const BoxDecoration(
                         color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(14))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15,right: 15,top: 20,bottom: 15),
                        child: Obx(
                            () => Column(
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children:[
                                      Image(
                                        height: 28,
                                        width: 28,
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/icons/facebook.png")),
                                        SizedBox(width: 15,),
                                        Image(
                                        height: 28,
                                        width: 28,
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/icons/insta.png")),
                                        SizedBox(width: 15,),
                                        Image(
                                        height: 28,
                                        width: 28,
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/icons/twitter.png")),
                                    ],
                                  ),
                                  Row(
                                    children:[
                                      Icon(Icons.cancel_outlined)
                                    ],
                                  ),
                                ],
                              ),
                              const Padding(
                                padding:  EdgeInsets.only(top: 15),
                                child: Divider(thickness: 1,),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                                child: InkWell(
                                  onTap: (){
                                    plannerController.filterSelect(0);
                                    plannerController.update();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Text("Today Post",
                                        style: primaryFont.copyWith(
                                        fontSize: 19,
                                        color: const Color(0xff023047),
                                        )),
                                        Container(
                                          height: 21,
                                          width: 21,
                                          decoration: BoxDecoration(
                                            color:plannerController.filterSelect == 0 ? primaryColor : const Color(0xffE4E4E4),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child:const Center(
                                            child: Icon(Icons.check,size: 13,color: Colors.white,),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(thickness: 1,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                                child: InkWell(
                                  onTap: (){
                                    plannerController.filterSelect(1);
                                    plannerController.update();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Text("Weekly Analysis",
                                        style: primaryFont.copyWith(
                                        fontSize: 19,
                                        color: const Color(0xff023047),
                                        )),
                                        Container(
                                          height: 21,
                                          width: 21,
                                          decoration: BoxDecoration(
                                            color:plannerController.filterSelect == 1 ? primaryColor :const Color(0xffE4E4E4),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child:const Center(
                                            child: Icon(Icons.check,size: 13,color: Colors.white,),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(thickness: 1,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                                child: InkWell(
                                  onTap: (){
                                    plannerController.filterSelect(2);
                                    plannerController.update();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Text("Monthly Analysis",
                                        style: primaryFont.copyWith(
                                        fontSize: 19,
                                        color: const Color(0xff023047),
                                        )),
                                        Container(
                                          height: 21,
                                          width: 21,
                                          decoration: BoxDecoration(
                                            color:plannerController.filterSelect == 2 ? primaryColor :const Color(0xffE4E4E4),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child:const Center(
                                            child: Icon(Icons.check,size: 13,color: Colors.white,),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(thickness: 1,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                                child: InkWell(
                                  onTap: (){
                                    plannerController.filterSelect(3);
                                    plannerController.update();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Text("3 Month Analysis",
                                        style: primaryFont.copyWith(
                                        fontSize: 19,
                                        color: const Color(0xff023047),
                                        )),
                                        Container(
                                          height: 21,
                                          width: 21,
                                          decoration: BoxDecoration(
                                            color:plannerController.filterSelect == 3 ? primaryColor :const Color(0xffE4E4E4),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child:const Center(
                                            child: Icon(Icons.check,size: 13,color: Colors.white,),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              const Divider(thickness: 1,),
                              Padding(
                                padding: const EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                                child: InkWell(
                                  onTap: (){
                                    plannerController.filterSelect(4);
                                    plannerController.update();
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                       Text("6 Month Analysis",
                                        style: primaryFont.copyWith(
                                        fontSize: 19,
                                        color: const Color(0xff023047),
                                        )),
                                        Container(
                                          height: 21,
                                          width: 21,
                                          decoration: BoxDecoration(
                                            color:plannerController.filterSelect == 4 ? primaryColor :const Color(0xffE4E4E4),
                                            borderRadius: BorderRadius.circular(12),
                                          ),
                                          child:const Center(
                                            child: Icon(Icons.check,size: 13,color: Colors.white,),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
                },
                child: Image.asset('assets/icons/insightsimage.png')),
            ],
          ),
        ),
          ),
        )),
      
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
         Padding(
           padding: const EdgeInsets.only(left: 15,bottom: 10),
           child: Text("Post",
                style: primaryFont.copyWith(
                fontSize: 18,
                color: const Color(0xff023047),
                fontWeight: FontWeight.w600
              )),
         ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Container(
              height: 175,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const Color(0xffA35ED8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 12),
                    child: Row(
                      children: [
                        const Image(image: AssetImage("assets/icons/insightsimage2.png")),
                        const SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("New Brand Post",
                               style: primaryFont.copyWith(
                               fontSize: 15,
                               color: const Color(0xffF9FAFC),
                               fontWeight: FontWeight.w600
                              )),
                              Text("Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt\nut labore et dolore magna aliqua.",
                               style: primaryFont.copyWith(
                               fontSize: 9,
                               color: const Color(0xffF9FAFC),
                               height: 1.5,
                               fontWeight: FontWeight.w500,
                              )),
                               Text("#new #trending #design",
                               style: primaryFont.copyWith(
                               fontSize: 9,
                               color: const Color(0xffF9FAFC),
                               fontWeight: FontWeight.w500
                              )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 45,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Post Reach",
                            style: primaryFont.copyWith(
                            fontSize: 11,
                            color: primaryColor,
                            fontWeight: FontWeight.w500
                            )),
                            Text("45",
                               style: primaryFont.copyWith(
                               fontSize: 18,
                               color: const Color(0xff023047),
                               fontWeight: FontWeight.w600
                            )),
                          ],
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Post Impression",
                            style: primaryFont.copyWith(
                            fontSize: 11,
                            color: primaryColor,
                            fontWeight: FontWeight.w500
                            )),
                            Text("67",
                               style: primaryFont.copyWith(
                               fontSize: 18,
                               color: const Color(0xff023047),
                               fontWeight: FontWeight.w600
                            )),
                          ],
                        ),
                      ),
                      Container(
                        height: 45,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Post Engagement",
                            style: primaryFont.copyWith(
                            fontSize: 11,
                            color: primaryColor,
                            fontWeight: FontWeight.w500
                            )),
                            Text("67",
                               style: primaryFont.copyWith(
                               fontSize: 18,
                               color: const Color(0xff023047),
                               fontWeight: FontWeight.w600
                            )),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Interactions",
                      style: primaryFont.copyWith(
                      fontSize: 18,
                      color: const Color(0xff023047),
                      fontWeight: FontWeight.w600
                     )),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Image.asset('assets/icons/intractionimage.png'))),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Image.asset('assets/icons/intractionimage2.png'))),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Image.asset('assets/icons/intractionimage3.png'))),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Image.asset('assets/icons/intractionimage4.png'))),
              Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Center(
                  child: Image.asset('assets/icons/intractionimage5.png')))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("21",
                    style: primaryFont.copyWith(
                    fontSize: 18,
                    color: const Color(0xff023047),
                   )),
               Text("21",
                    style: primaryFont.copyWith(
                    fontSize: 18,
                    color: const Color(0xff023047),
                   )),
               Text("21",
                    style: primaryFont.copyWith(
                    fontSize: 18,
                    color: const Color(0xff023047),
                   )),
               Text("21",
                    style: primaryFont.copyWith(
                    fontSize: 18,
                    color: const Color(0xff023047),
                   )),
               Text("21",
                    style: primaryFont.copyWith(
                    fontSize: 18,
                    color: const Color(0xff023047),
                   )),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
           Padding(
             padding: const EdgeInsets.only(left: 15,bottom: 5),
             child: Text("Social Media Post Reached",
                                          style: primaryFont.copyWith(
                                          fontSize: 18,
                                          color: const Color(0xff023047),
                                          fontWeight: FontWeight.w600
                                          )),
           ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              height: 151,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xffFFECF3),
                        Color(0xffFFECF3),
                      ])
                      ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 150,
                      child: SfCartesianChart(
                        // Chart title
                        // Enable legend
                        // legend: Legend(isVisible: true,),
                        // Enable tooltip
                        tooltipBehavior: TooltipBehavior(
                          enable: true,
                        ),
                        series: <ChartSeries<_SalesData, String>>[
                          StackedLineSeries<_SalesData, String>(
                              color: Colors.black,
                              dataSource: data,
                              xValueMapper: (_SalesData sales, _) => sales.year,
                              yValueMapper: (_SalesData sales, _) =>
                                  sales.sales,
                              // name: 'Sales',
                              markerSettings:
                                  const MarkerSettings(isVisible: true))
                          // Enable data label
                          //dataLabelSettings: DataLabelSettings(isVisible: true,color: Colors.amber))
                        ],
                        primaryXAxis: CategoryAxis(
                            labelStyle: const TextStyle(color: Colors.black)),
                        primaryYAxis: CategoryAxis(
                          labelStyle: const TextStyle(color: Colors.black),
                          minimum: 0,
                          maximum: 10000,
                          desiredIntervals: 5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const CreateScreen());
        },
        backgroundColor:const Color(0xff75032D),
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
          onTap: (index) => Get.offAll(HomeBottomNavgationBar(index: index,))),
    );
  }

  
}

class _SalesData {
  _SalesData(this.year, this.sales);
  final String year;
  final double sales;
}
