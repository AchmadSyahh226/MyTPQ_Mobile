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
              color: Color.fromARGB(255, 244, 58, 2),
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
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const NiatSholat())),
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.man,
              size: 80,
              color: Color.fromARGB(255, 86, 86, 86),
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
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const PanduanSholat())),
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
            Text("Panduan Sholat",
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
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => const PanduanWudhu())),
        splashColor: Colors.blue[700],
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Icon(
              Icons.dry,
              size: 80,
              color: Color.fromARGB(248, 18, 81, 163),
            ),
            Text("Panduan Wudhu",
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
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Card(
              child: Center(
                child: Column(
                  children: const <Widget>[
                    Text("Pembukaan\n",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(
                        "1. Salaaman\n"
                        "اَلسَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَا تُهُ"
                        "\n"
                        "\n2. Isti'daadan (Siap)\n"
                        "3. Doa Masuk Masjid : \n"
                        "اَللّٰهُمَّ افْتَحْ لِيْ اَبْوَابَ رَحْمَتِكَ"
                        "\n"
                        "\n4. Khusyu'an (Tenang dan fokus) \n"
                        "5. Duaa'an (Berdoa) \n"
                        "6. Membaca Al-Fatihah \n"
                        "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ\n"
                        "اَلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْ\n"
                        "الرَّحْمٰنِ الرَّحِيْمِ\n"
                        "مٰلِكِ يَوْمِ الدِّيْنِ\n"
                        "اِيَّاكَ نَعْبُدُ وَاِيَّاكَ نَسْتَعِيْنُ\n"
                        "اِھْدِنَا الصِّرَاطَ الْمُسْتَـقِيْمَ\n"
                        "صِرَاطَ الَّذِيۡنَ اَنۡعَمۡتَ عَلَيۡهِمۡ ۙ غَيۡرِ الۡمَغۡضُوۡبِ عَلَيۡهِمۡ وَلَا الضَّآلِّيۡنَ\n"
                        "\n"
                        "7. Doa Pembuka Hati & Doa Belajar \n"
                        "رَضِتُ بِااللهِ رَبَا وَبِالْاِسْلاَمِ دِيْنَا وَبِمُحَمَّدٍ نَبِيَا وَرَسُوْلاَ رَبِّ زِدْ نِيْ عِلْمًـاوَرْزُقْنِـيْ فَهْمًـا\n",
<<<<<<< HEAD
                        textAlign: TextAlign.left),
=======
                        textAlign: TextAlign.center),
>>>>>>> 2d2766a4a5f1db0b0fbd223e66f8626d89e21c20
                    Text(
                        " رَضِيْتُ بِاللهِ رَبًّا، وَبِالإِسْلَامِ دِيْنًا، وَبِمُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ نَبِيًّا وَرَسُوْلًا"
                        "  رَبِّ ٱشْرَحْ لِى صَدْرِى وَيَسِّرْ لِىٓ أَمْرِى وَٱحْلُلْ عُقْدَةً مِّن لِّسَانِى يَفْقَهُوا۟ قَوْلِى"
                        "رَبِّ زِدْنِي عِلْمًا، وَارْزُقْنِيْ فَهْمًا \n",
                        textAlign: TextAlign.center),
                    Text(
                        "8. Membaca Doa Iftitah\n"
                        "اللهُ اَكْبَرُ كَبِرًا وَالْحَمْدُ لِلهِ كَشِيْرًا وَسُبْحَانَ اللهِ بُكْرَةً وَاَصِيْلًا . اِنِّى وَجَّهْتُ وَجْهِيَ لِلَّذِيْ فَطَرَالسَّمَاوَاتِ وَالْااَرْضَ حَنِيْفًا مُسْلِمًا\n"
                        "وَمَا اَنَا مِنَ الْمُشْرِكِيْنَ . اِنَّ صَلَاتِيْ وَنُسُكِيْ وَمَحْيَايَ وَمَمَاتِيْ لِلهِ رَبِّ الْعَا لَمِيْنَ . لاَ شَرِيْكَ لَهُ وَبِذَ لِكَ اُمِرْتُ وَاَنَ مِنَ\n"
                        "الْمُسْلِمِيْنَ .\n"
                        "\n"
                        "9. Membaca Sholawat Thibbil Quluub\n"
                        "أَللَّهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ طِبِّ الْقُلُوْبِ وَدَوَائِهَا وَعَافِيَةِ الأَبْدَانِ وَشِفَائِهَا وَنُوْرِ الأَبْصَارِ وَضِيَائِهَا وَعَلَى آَلِهِ وَصَحْبِهِ وَبَارِكْ وَسَلِّمْ.\n"
                        "\n"
                        "10. Membaca Sholawat Nariyah\n"
                        "اللَّهُمَّ صَلِّ صَلاَةً كَامِلَةً وَسَلِّمْ سَلاَمًا تَامًّا عَلىَ سَيِّدِنَا مُحَمَّدٍ الَّذِيْ تُنْحَلُ بِهَ الْعُقَدُ وَتَنْفَرِجُ بِهِ الْكُرَبُ وَتُقْضَى بِهِ الْحَوَائِجُ\n"
                        "وَتُنَالُ بِهِ الرَّغَائِبُ وَحُسْنُ الْخَوَاتِيْمِ وَيُسْتَسْقَى الْغَمَامُ بِوَجْهِهِ الْكَرِيْمِ وَعَلىَ آلِهِ وَصَحْبِهِ عَدَدَ كُلِّ مَعْلُوْمٍ لَكَ\n"
                        "\n"
                        "َ11. Membaca Sholawat Asyghil\n"
                        "اللَّهُمَّ صَلِّ عَلَي سَيِّدِنَا مُحَمَّدٍ وَأَشْغِلِ الظَّالِمِيْنَ بِالظَّالِمِيْنَ وَأَخْرِجْنَا مِنْ بَيْنِهِمْ سَالِمِيْنَ وَعَلَي الِهِ وَصَحْبِهِأَجْمَعِيْنَ\n"
                        "\n"
                        "12. Membaca Asmaul Husnaa \n"
                        "13. Membaca Sholawat Maulaya \n"
                        "مَوْلَايَ صَلِّ وَسَلِّمْ دَائِمًا أَبَدًا , عَلىٰ حـَبِيْبِكَ خـَيْرِ الْخَلْقِ كًلِّهِمِ\n"
                        "\n"
                        "14. Infaq \n"
                        "15. Pengumuman \n"
                        "16. Mengaji sesuai jilid masing-masing \n",
<<<<<<< HEAD
                        textAlign: TextAlign.left),
=======
                        textAlign: TextAlign.center),
>>>>>>> 2d2766a4a5f1db0b0fbd223e66f8626d89e21c20
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class NiatSholat extends StatefulWidget {
  const NiatSholat({Key? key}) : super(key: key);

  @override
  State<NiatSholat> createState() => _NiatSholatState();
}

class _NiatSholatState extends State<NiatSholat> {
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
                  'Niat Sholat',
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
                    "Niat Sholat FARDHU",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                      "\n1. SHOLAT SUBUH"
                      "\n أُصَلِّى فَرْضَ الصُّبْح رَكَعتَيْنِ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لله تَعَالَى"
<<<<<<< HEAD
                      "\n"
                      "\n2. SHOLAT DHUHUR"
                      "\n اُصَلِّيْ فَرْضَ الظُّهْرِ أَرْبَعَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لله تَعَالَى"
                      "\n"
                      "\n3. SHOLAT ASHAR"
                      "\n أُصَلِّى فَرْضَ العَصْرِأَرْبَعَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لله تَعَالَى"
                      "\n"
                      "\n4. SHOLAT MAGHRIB"
                      "\n أُصَلِّى فَرْضَ المَغْرِبِ ثَلاَثَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لله تَعَالَ"
                      "\n"
                      "\n5. SHOLAT ISYA"
=======
                      "\n\n2. SHOLAT DHUHUR"
                      "\n اُصَلِّيْ فَرْضَ الظُّهْرِ أَرْبَعَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لله تَعَالَى"
                      "\n\n3. SHOLAT ASHAR"
                      "\n أُصَلِّى فَرْضَ العَصْرِأَرْبَعَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لله تَعَالَى"
                      "\n\n4. SHOLAT MAGHRIB"
                      "\n أُصَلِّى فَرْضَ المَغْرِبِ ثَلاَثَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لله تَعَالَ"
                      "\n\n5. SHOLAT ISYA"
>>>>>>> 2d2766a4a5f1db0b0fbd223e66f8626d89e21c20
                      "\n أُصَلِّى فَرْضَ العِشَاء ِأَرْبَعَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لله تَعَالَى",
                      textAlign: TextAlign.left),
                ],
              ),
            ),
          ),
        ));
  }
}

class PanduanSholat extends StatefulWidget {
  const PanduanSholat({Key? key}) : super(key: key);

  @override
  State<PanduanSholat> createState() => _PanduanSholatState();
}

class _PanduanSholatState extends State<PanduanSholat> {
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
                  'Panduan Sholat',
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
                  Text("PANDUAN SHOLAT",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("\nSyarat Sholat \n",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "1. Beragama Islam\n"
                      "2. Mumayyiz\n"
                      "3. Sudah masuk waktu shalat\n"
                      "4. Mengetahui fardhu-fardhu shalat\n"
                      "5. Suci dari hadats kecil, besar, & najis\n"
                      "6. Menutup aurat bagi yang mampu\n"
                      "7. Menghadap kiblat\n"
                      "8. Tidak banyak bergerak selain gerakan shalat\n"
                      "9. Tidak sambil makan dan minum\n"
                      "10. Tidak dalam keraguan\n"
                      "11. Tidak menggantungkan kebatalan shalatnya dengan sesuatu apa pun\n",
                      textAlign: TextAlign.left),
                  Text("\nRukun Sholat \n",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "Niat, takbiratulihram sambil memasang niat, berdiri jika mampu, membaca Al-fatihah, ruku', i'tidal,"
                      "sujud, duduk diantara dua sujud, thuma'ninah, tasyahud akhir, membaca sholawat nabi, salam, tertib.",
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ));
  }
}

class PanduanWudhu extends StatefulWidget {
  const PanduanWudhu({Key? key}) : super(key: key);

  @override
  State<PanduanWudhu> createState() => _PanduanWudhuState();
}

class _PanduanWudhuState extends State<PanduanWudhu> {
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
                  'Panduan Wudhu',
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
                  Text("Tata Cara Wudhu\n",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(
                      "1. Membaca basmalah\n"
                      "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم\n\n"
                      "2. Cuci tangan sampai ke pergelangan tangan 3x\n"
                      "3. Kumur-kumur 3x\n"
                      "4. Memasukkan air ke dalam hidung 3x\n"
                      "5. Membaca niat wudhu : \n"
                      "نَوَيْتُ الْوُضُوْءَ لِرَفْعِ الْحَدَثِ اْلاَصْغَرِ فَرْضًا ِللهِ تَعَالَى\n\n"
                      "6. Cuci muka 3x, dari garis rambut ke dagu dan dari telinga ke telinga, pastikan seluruh wajah, alis, bawah hidung dan bibir dicuci\n"
                      "7. Cuci lengan dan tangan dari ujung jari sampai siku 3x\n"
                      "8. Usap kepala mulai dengan tangan di depan kepala, bawa ke belakang kepala dan kemudian kembali ke depan lagi 3x\n"
                      "9. Cuci kaki 3x hingga mata kaki, pastikan untuk menyeka sela-sela jari kaki dengan jari kelingking\n"
                      "10. Akhiri wudhu dengan doa : \n"
                      "َ اشْهَدُ أَنْ لَاإِلٰهَ إِلَّااللهُ وَحْدَهُ لَاشَرِيْكَ لَهُ وَأَشْهَدُ أَنَّ مُحَمَّدًاعَبْدُهُ وَرَسُوْلُهُ. اَللّٰهُمَّ اجْعَلْنِيْ مِنَ التَّوَّابِيْنَ وَاجْعَلْنِيْ مِنَ الْمُتَطَهِّرِيْنَ وَجْعَلْنِيْ مِنْ عِبَادِكَ الصَّالِحِيْنَ\n",
                      textAlign: TextAlign.center)
                ],
              ),
            ),
          ),
        ));
  }
}
