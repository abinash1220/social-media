import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.red,title: Text('Notification'),), body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemCount: 20,
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