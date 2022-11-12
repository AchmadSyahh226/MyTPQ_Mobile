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
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const DoaAwal())),
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
              Icons.man,
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
              Icons.dry,
              size: 80,
              color: Color.fromARGB(249, 62, 146, 255),
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

class DoaAwal extends StatefulWidget {
  const DoaAwal({Key? key}) : super(key: key);

  @override
  State<DoaAwal> createState() => _DoaAwalState();
}

class _DoaAwalState extends State<DoaAwal> {
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
                  'Doa Pembukaan',
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
                  Text(
                    "Pembukaan\n",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                      "1. Salaaman\n"
                      "2. Isti'daadan (Siap)\n"
                      "3. Doa Masuk Masjid : \n"
                      "اَللّٰهُمَّ افْتَحْ لِيْ اَبْوَابَ رَحْمَتِكَ"
                      "\n4. Khusyu'an (Tenang dan fokus) \n"
                      "5. Duaa'an (Berdoa) \n"
                      "6. Membaca Al-Fatihah \n"
                      "7. Doa Pembuka Hati & Doa Belajar \n",
                      textAlign: TextAlign.left),
                  Text(
                      " رَضِيْتُ بِاللهِ رَبًّا، وَبِالإِسْلَامِ دِيْنًا، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا وَرَسُوْلًا"
                      "  رَبِّ ٱشْرَحْ لِى صَدْرِى وَيَسِّرْ لِىٓ أَمْرِى وَٱحْلُلْ عُقْدَةً مِّن لِّسَانِى يَفْقَهُوا۟ قَوْلِى"
                      "رَبِّ زِدْنِي عِلْمًا، وَارْزُقْنِيْ فَهْمًا \n",
                      textAlign: TextAlign.center),
                  Text(
                      "8. Membaca Doa Iftitah\n"
                      "9. Membaca Sholawat Thibbil Quluub\n"
                      "10. Membaca Sholawat Nariyah\n"
                      "َ11. Membaca Sholawat Asyghil\n"
                      "12. Membaca Asmaul Husnaa \n"
                      "13. Membaca Sholawat Maulaya \n"
                      "14. Infaq \n"
                      "15. Pengumuman \n"
                      "16. Mengaji sesuai jilid masing-masing \n",
                      textAlign: TextAlign.left),
                ],
              ),
            ),
          ),
        ));
  }
}
