import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: Container(
                  height: 220,
                  padding: EdgeInsets.only(left: 24, right: 24, bottom: 32),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2016/11/08/05/20/boy-1807525_960_720.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Spacer(),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 12,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            'Your current location',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Mandalay',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 48,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.cloud,
                            color: Colors.white,
                            size: 24,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '32',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                )),
            Positioned(
              top: 196,
              left: 24,
              right: 24,
              child: Card(
                elevation: 16,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                child: Container(
                  height: 48,
                  padding: EdgeInsets.only(left: 8, top: 4),
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.search),
                          hintText:
                              'Hi Khinekhilin, fine everything on your location',
                          hintStyle: TextStyle(fontSize: 13))),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: _buildBottomWidget(context));
  }

  Widget _buildBottomWidget(BuildContext context) {
    return BottomAppBar(
      elevation: 16,
      child: Container(
        height: 68,
        padding: EdgeInsets.only(left: 24, right: 24),
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.blueAccent),
                ),
                Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                Text(
                  'Location',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.open_in_browser,
                  color: Colors.grey,
                ),
                Text(
                  'Explorer',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
                Text(
                  'Plane',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
                Text(
                  'Favorite',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 3,
                  width: 48,
                  decoration: BoxDecoration(color: Colors.transparent),
                ),
                Icon(
                  Icons.person_outline,
                  color: Colors.grey,
                ),
                Text(
                  'User',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 4,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
