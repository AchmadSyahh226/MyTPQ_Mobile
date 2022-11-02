import 'package:flutter/material.dart';

class bayarSPP extends StatefulWidget {
  const bayarSPP({Key? key}) : super(key: key);

  @override
  State<bayarSPP> createState() => _bayarSPPState();
}

class _bayarSPPState extends State<bayarSPP> {

  TextEditingController controllerTanggal = TextEditingController();
  TextEditingController controllerNamaTerima = TextEditingController();
  TextEditingController controllerNamaSantri = TextEditingController();
  TextEditingController controllerJenisByr = TextEditingController();
  TextEditingController controllerJumlahByr = TextEditingController();
  TextEditingController controllerBln = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form SPP")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Column(children: <Widget>[
              TextField(
                controller: controllerTanggal,
                decoration: const InputDecoration(
                  hintText: "Hari/tanggal",
                  label: Text("Hari/tanggal"),
                ),
              ),
              TextField(
                controller: controllerNamaTerima,
                decoration: const InputDecoration(
                  hintText: "Nama Penerima",
                  label: Text("Nama Penerima"),
                ),
              ),
              TextField(
                controller: controllerNamaSantri,
                decoration: const InputDecoration(
                  hintText: "Nama Santri",
                  label: Text("Nama Santri"),
                ),
              ),
              TextField(
                controller: controllerJenisByr,
                decoration: const InputDecoration(
                  hintText: "Jenis Pembayaran",
                  label: Text("Jenis Pembayaran"),
                ),
              ),
              TextField(
                controller: controllerJumlahByr,
                decoration: const InputDecoration(
                  hintText: "Jumlah Pembayaran",
                  label: Text("Jumlah Pembayaran"),
                ),
              ),
              TextField(
                controller: controllerBln,
                decoration: const InputDecoration(
                  hintText: "Bulan",
                  label: Text("Bulan"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("PRINT",)),
            ]),
          ],
        ),
      ),
    );
  }
}