import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';

class BayarSPP extends StatefulWidget {
  const BayarSPP({Key? key}) : super(key: key);

  @override
  State<BayarSPP> createState() => _bayarSPPState();
}

class _bayarSPPState extends State<BayarSPP> {
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
                'Pembayaran',
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
                  onPressed: () => getPDF(),
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
        return pw.Column(
          children: [
            pw.Container(
                alignment: pw.Alignment.center,
                color: PdfColors.green600,
                width: double.infinity,
                child: pw.Text("KWITANSI",
                    style: pw.TextStyle(
                        fontSize: 50, fontWeight: pw.FontWeight.bold))),
            pw.Container(
                alignment: pw.Alignment.center,
                width: double.infinity,
                child: pw.Text("${DateTime.now()} \n\n\n",
                    style: const pw.TextStyle(fontSize: 20))),
            pw.Container(
                alignment: pw.Alignment.centerLeft,
                width: double.infinity,
                child: pw.Text(
                    "\n\n"
                    "Penerima : \n\n"
                    "Nama Santri : \n\n"
                    "Jenis Pembayaran : SPP\n\n"
                    "Jumlah Bayar : \n\n"
                    "Bulan : \n",
                    style: const pw.TextStyle(fontSize: 25))),
            pw.Container(
                alignment: pw.Alignment.bottomRight,
                width: double.infinity,
                child: pw.Text(
                    "\n\n\n\n\n\n\n\n\n\n\n\n\nTTD \n"
                    "\n\n"
                    "Penerima",
                    style: const pw.TextStyle(fontSize: 25))),
          ],
        );
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

  // buka pdf
  await OpenFile.open(file.path);
}
