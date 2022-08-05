import 'package:flutter/material.dart';
import 'package:flutterproject/screen/map_screen.dart';
import 'package:flutterproject/screen/review_screen.dart';

class DoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              child: MapScreen(),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              width: 392,
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 10),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Image.asset('assets/icons/penjemputan.png'),
                          ),
                          Container(height: 6, width: 3, color: Colors.grey),
                          SizedBox(
                            child: Image.asset('assets/icons/destination.png'),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Kampus 4 UAD'),
                          Divider(
                            thickness: 1,
                          ),
                          Text('Gang jambu 1, Mergangsan')
                        ],
                      ),
                      Column(
                        children: [
                          OutlineButton(
                            onPressed: () {},
                            borderSide: BorderSide(color: Colors.amber),
                            child: Text(
                              'Edit',
                              style: TextStyle(color: Colors.blue),
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: -2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                width: 392,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 10),
                  ],
                ),
                child: Stack(
                  children: [
                    Container(
                        width: 392,
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(right: 20),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(5),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100)),
                                      child: Image.asset(
                                        'assets/images/profile.jpg',
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.fitHeight,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 20,
                                    left: 20,
                                    child: Container(
                                      width: 95,
                                      height: 26,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.grey,
                                              blurRadius: 10),
                                        ],
                                      ),
                                      padding: EdgeInsets.all(4),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.yellowAccent[700],
                                            size: 18,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 2),
                                            child: Text(
                                              '3.9',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.black54),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rahmat Abdullah',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider(
                                  thickness: 1,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'AB 5712 AOC',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      width: 5,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        color: Colors.black26,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Pengantaran',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.amber[300],
                                      ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          right: 19,
          left: 19,
          bottom: 19,
          top: 10,
        ),
        child: RaisedButton(
          padding: EdgeInsets.all(14),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReviewScreen(),
              ),
            );
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(
            'Selesai',
            style: TextStyle(fontSize: 18),
          ),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(12.0),
          ),
        ),
      ),
    );
  }
}
