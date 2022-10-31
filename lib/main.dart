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
      body: Container(
          padding: EdgeInsets.all(30),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              MyMenu1(),
              MyMenu2(),
              MyMenu3(),
              MyMenu4(),
              MyMenu5(),
            ],
          )
        ),
    );
  }
}

class MyMenu1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.business,
              size: 80,
              color: Colors.brown,
            ),
            Text("MyTPQ Profil",
                style: new TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ))
          ],
        )),
      ),
    );
  }
}

class MyMenu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.note_add,
              size: 80,
              color: Colors.grey,
            ),
            Text("SPP",
                style: new TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ))
          ],
        )),
      ),
    );
  }
}

class MyMenu3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.menu_book,
              size: 80,
              color: Colors.blueGrey,
            ),
            Text("Buku Panduan",
                style: new TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ))
          ],
        )),
      ),
    );
  }
}

class MyMenu4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.place,
              size: 80,
              color: Colors.lightGreen,
            ),
            Text("Lokasi",
                style: new TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ))
          ],
        )),
      ),
    );
  }
}

class MyMenu5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.info,
              size: 80,
              color: Colors.red,
            ),
            Text("Tentang",
                style: new TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ))
          ],
        )),
      ),
    );
  }
}