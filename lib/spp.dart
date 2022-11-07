import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';

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
                'Form SPP',
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
              ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    "PRINT",
                  )),
            ]),
          ],
        ),
      ),
    );
  }
}

void getPDF() async {
  //buat class pdf
  final pdf = pw.Document();

  //buat page
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Center(
          child: pw.Text("Hello World"),
        ); // Center
      },
    ),
  ); // Page

  // simpan pdf
  Uint8List bytes = await pdf.save();

  //buat file kosong di directory
  final dir = await getApplicationDocumentsDirectory();
  final file = File('${dir.path}/myinvoice.pdf');

  //timpa file kosong
  await file.writeAsBytes(bytes);
}
