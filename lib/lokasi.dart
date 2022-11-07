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
          backgroundColor: const Color.fromARGB(255, 110, 137, 159),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 32, 81, 121),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(327.0),
                )),
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(""),
                Text(
                  'Lokasi',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 167, 205, 209),
                  ),
                ),
              ],
            ),
          ),
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