import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '    Add Account',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Container(
                child: Image.asset(
                  'assets/icons/floaticon.png',
                  height: 30,
                  width: 30,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Image.asset('assets/icons/facebook image.png'),
              ),
              Image.asset('assets/icons/instaimage.png'),
              Image.asset('assets/icons/twitterimage.png'),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 17,
                    width: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.black,
                        ),
                        color: Colors.white),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Public',
                          style: TextStyle(fontSize: 7),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        '      Example Contents',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        '       Lorem ipsum dolor sit amet,consectetur adipiscing elit, sed  do',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '        eiusmod tempor incididunt ut labore et dolore magna aliqua',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        '      #new ',
                        style: TextStyle(color: Color(0xFF129EBC)),
                      ),
                      Text(
                        '#trending',
                        style: TextStyle(color: Color(0xFF129FBC)),
                      ),
                      Text(
                        ' #designs',
                        style: TextStyle(color: Color(0xFF129FBC)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Container(
                    width: 334,
                    height: 196,
                    decoration: BoxDecoration(
                        color: Color(0xFFE0E4E6),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Image.asset('assets/icons/phovideoimage.png'),
                      Text(
                        ' Photo/video',
                        style: TextStyle(fontSize: 12.9),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset('assets/icons/logation.png'),
                    Text(
                      '  Locations',
                      style: TextStyle(fontSize: 12.9),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
              SizedBox(
                width: 12,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Image.asset('assets/icons/shecduleimage.png'),
                    Text(
                      '  Schedule',
                      style: TextStyle(fontSize: 12.9),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ],
          ),
          SizedBox(
            height: 35,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  minimumSize: Size(334, 35.7)),
              onPressed: () {
               // Navigator.of(context).push(
                 //   MaterialPageRoute(builder: (context) => EditPostScreen()));
              },
              child: Text('Post'))
        ],
      ),
    );
  }
}
