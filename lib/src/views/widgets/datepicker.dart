import 'package:calender_picker/date_picker_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constant/app_colors.dart';

class datepickerwidget extends StatelessWidget {
  const datepickerwidget({super.key});

  

  @override
  Widget build(BuildContext context) {
    return  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [primaryColor, secondaryColor]),
              ),
              height: 115,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SizedBox(
                    height: 5,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Easy To Select',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),Row(
                        children: [
                          Text('wed,23,2023',style: TextStyle(color: Colors.white),),
                     Icon(Icons.calendar_month,color: Colors.white,)   ],
                      )
                    ],
                  ),
                  CalenderPicker(
                    DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectionColor: Color.fromARGB(0, 0, 0, 0),
                    selectedTextColor: Colors.white,
                    onDateChange: (date) {
                      // New date selected
                      // setState(() {
                      //   _selectedValue = date;
                      // });
                    },
                  ),
                  SizedBox(
                    height: 4,
                  )
                ],
              ),
            );
  }
}