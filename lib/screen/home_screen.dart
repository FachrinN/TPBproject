import 'package:flutter/material.dart';
import 'package:flutterproject/screen/detail_pesan_screen.dart';
import 'package:flutterproject/screen/map_screen.dart';
import 'package:flutterproject/screen/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            Align(
              child: Stack(
                children: [
                  Positioned(
                    child: MapScreen(),
                  ),
                  Positioned(
                    top: 30,
                    left: 20,
                    right: 20,
                    child: AppBar(),
                  ),
                ],
              ),
            ),
            SizedBox.expand(
              child: DraggableScrollableSheet(
                initialChildSize: 0.24,
                minChildSize: 0.24,
                maxChildSize: 0.8,
                builder: (BuildContext c, s) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                      controller: s,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 8,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Mau Kemana hari ini ?',
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
                              prefixIcon: Icon(Icons.map_outlined),
                              labelText: 'Masukan alamat tujuan',
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
                          height: 20,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.stars,
                            color: Colors.yellow,
                          ),
                          title: Text(
                            'Kampus 3 UAD',
                            style: TextStyle(
                                color: Colors.blue.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              'Jl. Prof. DR. Soepomo Sh, Warungboto, Kec. Umbulharjo'),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen()));
                          },
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          title: Text(
                            'Malioboro',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              'Sosromenduran, Gedong Tengen, Kota Yogyakarta'),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          title: Text(
                            'Kampus 4 UAD',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              'Jl. Ringroad Selatan, Kragilan, Tamanan, Kec. Banguntapan'),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          title: Text(
                            'Kampus 1 UAD',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              'Jl. Mawar, Lempuyangan, Tamanan, Kec. Banguntapan'),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          title: Text(
                            'Kampus 2 UAD',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              'Jl. Ringroad Utara, Kragilan, Macanan, Kec. Banguntapan'),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      width: 372,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu_rounded,
              ),
              color: Colors.white,
            ),
          ),
          Container(
            height: 36,
            width: 100,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Bagas Syarifudin',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
            ),
          ),
          Container(
            width: 42,
            height: 42,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfileScreen(),
                  ),
                );
              },
              icon: Icon(
                Icons.person,
              ),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
