import 'package:flutter/material.dart';

class MyLocation extends StatefulWidget {
  const MyLocation({Key? key}) : super(key: key);

  @override
  State<MyLocation> createState() => _MyLocationState();
}

class _MyLocationState extends State<MyLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lokasi"),
          backgroundColor: Colors.blue[900],
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Card(
            child: Center(
              child: Column(
                children: const <Widget>[
                  Text("TPQ Darul Falihin"),
                  Text("Jalan Manukan Yoso, Tandes, Surabaya Barat, Jawa Timur", textAlign: TextAlign.center,),
                  Text("GMAPS : ", textAlign: TextAlign.center,),
                  Text("https://maps.app.goo.gl/KSkCMVZkCMa1WGnL9", textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
        ));
  }
}