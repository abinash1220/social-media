import 'package:flutter/material.dart';

class SuggestionScreen extends StatefulWidget {
  const SuggestionScreen({super.key});

  @override
  State<SuggestionScreen> createState() => _SuggestionScreenState();
}

class _SuggestionScreenState extends State<SuggestionScreen> {
  List festiveimage = [
    'assets/images/beach.png',
    'assets/images/3image.png',
    'assets/images/2image.png',
    'assets/images/4image.png',
    'assets/images/againimage.png',
  ];
  List eventsimage = [
    'assets/images/9image.png',
    'assets/images/8image.png',
    'assets/images/7image.png',
    'assets/images/10image.png',
    'assets/images/againimage2.png'
  ];
  List businessimage = [
    'assets/images/11image.png',
    'assets/images/12image.png',
    'assets/images/13image.png',
    'assets/images/14image.png',
    'assets/images/againimage3.png'
  ];
  List subtitile = ['Post01', "Post02", 'Post03', 'Post04', 'Post05'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[400],
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    '   Festival Posts',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              listimage(),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    '   Events Posts',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              listimage2(),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    '   Business Posts',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              listimage3()
            ],
          ),
        ),
        bottomNavigationBar: FloatingActionButton(
          backgroundColor: Colors.pink[400],
          child: Icon(Icons.add),
          onPressed: () {
          //Navigator.of(context)
              //.push(MaterialPageRoute(builder: (context) => CreateScreen()));
        }));
  }

  Widget listimage() {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: festiveimage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, Index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                        child: Image.asset(
                      festiveimage[Index],
                      height: 69,
                      width: 71,
                      fit: BoxFit.fitHeight,
                    )),
                    Text(
                      subtitile[Index],
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget listimage2() {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: eventsimage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, Index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                        child: Image.asset(
                      eventsimage[Index],
                      height: 69,
                      width: 71,
                      fit: BoxFit.fitHeight,
                    )),
                    Text(
                      subtitile[Index],
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }

  Widget listimage3() {
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: businessimage.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, Index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                        child: Image.asset(
                      businessimage[Index],
                      height: 69,
                      width: 71,
                      fit: BoxFit.fitHeight,
                    )),
                    Text(
                      subtitile[Index],
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
