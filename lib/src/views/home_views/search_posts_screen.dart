import 'package:flutter/material.dart';

class SearchPostScreen extends StatefulWidget {
  const SearchPostScreen({super.key});

  @override
  State<SearchPostScreen> createState() => _SearchPostScreenState();
}

class _SearchPostScreenState extends State<SearchPostScreen> {
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: Padding(
          padding: const EdgeInsets.only(top: 1,),
          child: Container(
            height: 40,
           
            decoration: BoxDecoration(
               color: Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            child: TextField(
              
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search Posts',
              suffixIcon: Image.asset('assets/icons/searchpostimage1.png',),
                border: OutlineInputBorder()
              ),
              
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30
                ),
                child: Text('Recent Search',
                style: TextStyle(color: Colors.grey[400]),),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('assets/icons/searchpostimage2.png'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
