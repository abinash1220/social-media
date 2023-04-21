import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_marketing/src/constant/app_colors.dart';
import 'package:social_media_marketing/src/constant/app_fonts.dart';
import 'package:social_media_marketing/src/controllers/bottum_controller.dart';
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
                  // showModalBottomSheet(context: context, builder: (BuildContext context) {
                  //   return Container(
                  //     height: 350,
                  //     decoration: BoxDecoration(
                  //        color: Colors.white,
                  //       borderRadius: BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(14))
                  //     ),
                  //   );
                  // });
                },
                child: Image.asset('assets/icons/insightsimage.png')),
            ],
          ),
        ),
          ),
        )),
      
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                '   Post',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff023047)),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffA35ED8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 20, right: 20),
                            child: Image.asset(
                              'assets/icons/insightsimage2.png',
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      'New Brand Post',
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Text(
                                      'Lorem ipsum dolor sit amet,',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'consectetur adipiscing elit,sed',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'do eiusmod tempor incididunt ut',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  'labore et dolore magna aliqua',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  '#new #trending #design',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Container(
                                  height: 45,
                                  width: 105,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10, top: 5),
                                            child: Text(
                                              'Post Reach',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '45',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: Container(
                                  height: 45,
                                  width: 110,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8, top: 5),
                                            child: Text(
                                              'Post Impression',
                                              style: TextStyle(
                                                fontSize: 13,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '55',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Container(
                                  height: 45,
                                  width: 113,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 5, left: 5),
                                            child: Text(
                                              'Post Engagement',
                                              style: TextStyle(fontSize: 13),
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        '67',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Interactions',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff023047),
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/icons/intractionimage.png'),
              Image.asset('assets/icons/intractionimage2.png'),
              Image.asset('assets/icons/intractionimage3.png'),
              Image.asset('assets/icons/intractionimage4.png'),
              Image.asset('assets/icons/intractionimage5.png')
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('21'),
              Text('21'),
              Text('21'),
              Text('21'),
              Text('21')
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              height: 185,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(255, 248, 181, 167),
                        Color.fromARGB(255, 248, 143, 136),
                      ])
                      ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 10, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total Sale".tr,
                          style: primaryFont.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        Text(
                          "\$12,000",
                          style: primaryFont.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
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
                              color: Colors.white,
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
                            labelStyle: const TextStyle(color: Colors.white)),
                        primaryYAxis: CategoryAxis(
                          labelStyle: const TextStyle(color: Colors.white),
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
        child: Icon(Icons.add),
       onPressed: () {
          Get.to(const CreateScreen());
        },
        backgroundColor:const Color(0xff75032D),
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
