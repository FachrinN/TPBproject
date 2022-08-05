import 'package:flutter/material.dart';
import 'package:flutterproject/screen/chose_driver_screen.dart';
import 'package:flutterproject/screen/done_screen.dart';
import 'package:flutterproject/screen/map_screen.dart';

class ChosePayment extends StatelessWidget {
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
              bottom: 215,
              left: 10,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChoseDriver(),
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
                height: 200,
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
                        Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.spaceAround,
                          children: [
                            FlatButton(
                              padding: EdgeInsets.all(20),
                              color: Colors.blue[100],
                              onPressed: () {},
                              shape: new RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.blue,
                                  width: 2,
                                ),
                                borderRadius: new BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                width: 120,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset('assets/icons/cash.png'),
                                    Text(
                                      'Tunai',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            FlatButton(
                              padding: EdgeInsets.all(20),
                              color: Colors.blue[50],
                              onPressed: () {},
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(15.0),
                              ),
                              child: Container(
                                width: 120,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.grey,
                                      size: 31,
                                    ),
                                    Text(
                                      'Add',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w800,
                                        color: Colors.grey,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      width: 392,
                      height: 60,
                      padding: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Pembayaran',
                            style: TextStyle(
                              fontFamily: 'Merriweather',
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            'Rp 10.000',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.yellow[700],
                            ),
                          ),
                        ],
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
        padding: EdgeInsets.all(19.0),
        child: RaisedButton(
          padding: EdgeInsets.all(14),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoneScreen(),
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
