import 'package:flutter/material.dart';

class Mybukupanduan extends StatefulWidget {
  const Mybukupanduan({Key? key}) : super(key: key);

  @override
  State<Mybukupanduan> createState() => _Mybukupanduan();
}

class _Mybukupanduan extends State<Mybukupanduan> {
  @override
  Widget build(BuildContext context) {
    // ui tampilan awal
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
                'Buku Panduan',
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
          padding: const EdgeInsets.all(30),
          child: GridView.count(
            crossAxisCount: 2,
            children: const <Widget>[
              MyMenu1(),
              MyMenu2(),
              MyMenu3(),
              MyMenu4(),
            ],
          )),
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
          children: const <Widget>[
            Icon(
              Icons.book,
              size: 80,
              color: Color.fromARGB(255, 102, 167, 59),
            ),
            Text("Doa Pembukaan",
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
          children: const <Widget>[
            Icon(
              Icons.bookmark_border,
              size: 80,
              color: Colors.grey,
            ),
            Text("Niat Sholat",
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
              Icons.mosque_outlined,
              size: 80,
              color: Color.fromARGB(255, 13, 14, 1),
            ),
            Text("Bacaan Sholat",
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
              Icons.water,
              size: 80,
              color: Color.fromARGB(255, 1, 109, 252),
            ),
            Text("Niat Wudhu",
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
