import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
      home: MyTPQ(),
    ));

class MyTPQ extends StatefulWidget {
  const MyTPQ({Key? key}) : super(key: key);

  @override
  State<MyTPQ> createState() => _MyTPQState();
}

class _MyTPQState extends State<MyTPQ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi MyTPQ"),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue[300],

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profil Akun"),
            ),
            ListTile(
              leading: Icon(Icons.key),
              title: Text("Ubah Kata Sandi"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Tentang"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Keluar"),
            ),
          ],
        ),
      ),
    );
  }
}
