import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class listviewsugetion extends StatelessWidget {
  const listviewsugetion({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
              height: 150,
               child: ListView.builder(scrollDirection: Axis.horizontal,
                         physics: const BouncingScrollPhysics(),
                         itemCount: 6,
                         shrinkWrap: true,
                         itemBuilder: (context, index) {
                return  Padding(
                  padding: EdgeInsets.all(8.0),
                  child:  Container(
                       child: Column(
                         children: [
                           Container(
                             height: 74,
                             width: 70,
                             child: Image.asset('assets/images/213.png'),
                           ),
                           Text('Fasion design')
                         ],
                       ),
                     ),
                );
                         }),
             );
  }
}