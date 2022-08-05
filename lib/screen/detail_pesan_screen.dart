import 'package:flutter/material.dart';
import 'package:flutterproject/screen/chose_driver_screen.dart';
import 'package:flutterproject/screen/home_screen.dart';
import 'package:flutterproject/screen/map_screen.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            Container(
              child: MapScreen(),
            ),
            Positioned(
              bottom: 315,
              left: 10,
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
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
              bottom: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                width: 392,
                height: 300,
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
                child: ListView(
                  children: [
                    Text(
                      'Geser pin untuk menentukan lokasi !',
                      style: TextStyle(color: Colors.amber),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Konfirmasi Penjemputan',
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Masukan lokasi penjemputan',
                          prefixIcon: Icon(Icons.location_on),
                          fillColor: Colors.grey,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(13),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Tambahkan Catatan',
                          prefixIcon: Icon(Icons.note_add),
                          fillColor: Colors.grey,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(14)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChoseDriver(),
                          ),
                        );
                      },
                      child: const Text(
                        'Konfirmasi',
                        style: TextStyle(fontSize: 18),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
