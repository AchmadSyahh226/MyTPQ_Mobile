import 'package:flutter/material.dart';

class MyTpqtentang extends StatefulWidget {
  const MyTpqtentang({Key? key}) : super(key: key);

  @override
  State<MyTpqtentang> createState() => _MyTpqtentangState();
}

class _MyTpqtentangState extends State<MyTpqtentang> {
  @override
  Widget build(BuildContext context) {
    // ui tampilan awal
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 110, 137, 159),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 81, 121),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(327.0),
                )),
            height: 150,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(""),
                Text(
                  'Tentang My TPQ',
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
                  Text("Kelompok 9"),
                  Text("21050974004 Achmad Syahrul Ramadhan"),
                  Text("21050974008 Dina Amilia"),
                  Text("21050974036 Muhammad Catur Rizaldi Bahtiar"),
                  Text("21050974056 Adinda Amelia Putri"),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                  ),
                  Text("Isi Aplikasi My TPQ: "),
                  Text(
                    "1. My TPQ Profil (berisi profil TPQ serta visi dan misinya)",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "2. Buku Panduan (berisi doa pembuka awal saat mengaji, niat sholat, bacaan sholat dan ayat kursi))",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "3. SPP (berisi form pendataan murid yang mau membayar spp dan pencetakkan kwitansi)",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "4. Lokasi (berisi data alamat TPQ dan link google maps)",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "5. Tentang (berisi nama kelompok pembuat aplikasi setra isi dan fungsi aplikasi)",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                  ),
                  Text("Fungsi Aplikasi My TPQ : "),
                  Text(
                    "kami berharap aplikasi My TPQ ini dapat membantu mempermudah pencetakan dalam pembayaran spp dan sebagai pedoman saat mengaji.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
