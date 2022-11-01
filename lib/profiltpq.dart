import 'package:flutter/material.dart';

class MyTpqProfil extends StatefulWidget {
  const MyTpqProfil({Key? key}) : super(key: key);

  @override
  State<MyTpqProfil> createState() => _MyTpqProfilState();
}

class _MyTpqProfilState extends State<MyTpqProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil TPQ"),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Card(
          child: Center(
            child: Column(
              children: const <Widget>[
                Text("TPQ Darul Falihin"),
                Text("Lokasi : Jl. Manukan Yoso, Tandes, Surabaya"),
              ],
            ),
          ),
        ),
    ));
  }
}