import 'package:flutter/material.dart';

class MyTpqProfil extends StatefulWidget {
  const MyTpqProfil({Key? key}) : super(key: key);

  @override
  State<MyTpqProfil> createState() => _MyTpqProfilState();
}

class _MyTpqProfilState extends State<MyTpqProfil> {
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
                  'Profil TPQ',
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
                  Text("Berdiri : 2006"),
                  Text("No. Statistik : 411.2.35.78.0445"),
                  Text("Kepala TPQ : Farid Mashudi S.Pd.I."),
                  Text("Metode pengajaran : An-Nahdliyah"),
                  Text(
                    "Metode ini terbukti sangat efektif, efisien, mudah dipahami sehingga memudahkan belajar membaca Al-Quran dengan benar.",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                  ),
                  Text("Visi : "),
                  Text(
                    "Terciptanya generasi Qur'ani, berakhlakul karimah, berprestasi, berdasarkan IMTAQ dan bermanfaat bagi umat.",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "",
                    textAlign: TextAlign.center,
                  ),
                  Text("Misi : "),
                  Text(
                    "1. Mengajarkan bacaan Al-Quran sesuai ilmu tajwid.",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "2. Membekali santri lebih memperdalam ajaran Islam pada jenjang selanjutnya.",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "3. Menanamkan sikap keimanan, keislaman, ketaqwaan sejak dini serta membiasakan santri berperilaku baik, sopan terhadap guru, orang tua, dan sesama.",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "4. Melestarikan tradisi ilmiah dan amaliah salafus shalih.",
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "5. Meningkatkan minat dan bakat santri dalam berkompetisi untuk meningkatkan prestasi.",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
