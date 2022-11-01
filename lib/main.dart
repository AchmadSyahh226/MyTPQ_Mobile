import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(
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
        title: const Text("Aplikasi MyTPQ"),
        backgroundColor: Colors.blue[900],
      ),
      backgroundColor: Colors.blue[300],

      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.person),
              title: Text("TPQ Darul Falihin"),
            ),
          ],
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(30),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              const MyMenu1(),
              const MyMenu2(),
              const MyMenu3(),
              const MyMenu4(),
              const MyMenu5(),
            ],
          )
        ),
    );
  }
}

class MyMenu1 extends StatelessWidget {
  const MyMenu1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
              Icons.business,
              size: 80,
              color: Colors.brown,
            ),
            const Text("MyTPQ Profil",
                style: TextStyle(
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
  const MyMenu2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Icon(
              Icons.note_add,
              size: 80,
              color: Colors.grey,
            ),
            const Text("SPP",
                style: TextStyle(
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
  const MyMenu3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.menu_book,
              size: 80,
              color: Colors.blueGrey,
            ),
            Text("Buku Panduan",
                style: TextStyle(
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
  const MyMenu4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.place,
              size: 80,
              color: Colors.lightGreen,
            ),
            Text("Lokasi",
                style: TextStyle(
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
  const MyMenu5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () {},
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.info,
              size: 80,
              color: Colors.red,
            ),
            Text("Tentang",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ))
          ],
        )),
      ),
    );
  }
}