import 'package:flutter/material.dart';
import 'package:flutterproject/screen/home_screen.dart';
import 'package:flutterproject/screen/map_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ReviewScreen extends StatelessWidget {
  var rating = 3.0;
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              width: double.infinity,
              height: 115,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.grey, blurRadius: 10),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 30,
                    child: Text(
                      'Detail Pesanan',
                      style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                      top: 41,
                      right: 0,
                      child: Text(
                        'ID1800016153',
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            color: Colors.grey[600]),
                      ))
                ],
              ),
            ),
            Positioned(
              top: 90,
              right: 40,
              left: 40,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(17),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '17 Jul 2021, 10:32 WIB',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Text(
                      '7.32 km | 12 min',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white60,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: -2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: 392,
                height: 270,
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
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              child:
                                  Image.asset('assets/icons/penjemputan.png'),
                            ),
                            Container(height: 40, width: 3, color: Colors.grey),
                            SizedBox(
                              child:
                                  Image.asset('assets/icons/destination.png'),
                            ),
                          ],
                        ),
                        Container(
                          height: 110,
                          width: 300,
                          margin: EdgeInsets.only(left: 20, right: 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.all(3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kampus 3 UAD',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins'),
                                    ),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Text(
                                      'Jl. Prof. DR. Soepomo Sh, Warungboto',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins',
                                          color: Colors.grey,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                thickness: 1,
                              ),
                              Container(
                                padding: EdgeInsets.all(3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Gang Jambu',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins'),
                                    ),
                                    SizedBox(
                                      height: 1,
                                    ),
                                    Text(
                                      'Jl. Pemuda, Mergangsan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Poppins',
                                          color: Colors.grey,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.indigo[900],
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Ayo Beri Rating Driver!',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SmoothStarRating(
                            rating: rating,
                            isReadOnly: false,
                            size: 40,
                            filledIconData: Icons.star,
                            halfFilledIconData: Icons.star_half,
                            defaultIconData: Icons.star_border,
                            starCount: 5,
                            allowHalfRating: true,
                            spacing: 2.0,
                            color: Colors.amber,
                            borderColor: Colors.amber,
                            onRated: (value) {
                              print("rating value -> $value");
                              // print("rating value dd -> ${value.truncate()}");
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 5, bottom: 20, left: 20, right: 20),
        child: RaisedButton(
          padding: EdgeInsets.all(14),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              ),
            );
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(
            'Beri Ulasan',
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
