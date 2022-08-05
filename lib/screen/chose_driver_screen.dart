import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutterproject/screen/chose_payment.dart';
import 'package:flutterproject/screen/detail_pesan_screen.dart';
import 'package:flutterproject/screen/map_screen.dart';

class ChoseDriver extends StatelessWidget {
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
              bottom: 235,
              left: 10,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(),
                    ),
                  );
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.blue,
                ),
                mini: true,
                backgroundColor: Colors.white,
              ),
            ),
            Positioned(
              bottom: -2,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                width: 392,
                height: 220,
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
                    ListView(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        FlatButton(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          onPressed: () {},
                          color: Colors.blue[50],
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(12.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 42,
                                height: 42,
                                child: Image.asset('assets/icons/motor.png'),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Motor',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text('1 Orang')
                                ],
                              ),
                              Text(
                                'Rp 10.000',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.yellow[800],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 392,
                      height: 60,
                      padding: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Text(
                        'Pilih Kendaraan',
                        style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
        child: RaisedButton(
          padding: EdgeInsets.all(14),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChosePayment(),
              ),
            );
          },
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(
            'Konfirmasi',
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
