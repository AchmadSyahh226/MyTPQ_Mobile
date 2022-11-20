// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:pdf/pdf.dart' as pd;
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class BayarSPP extends StatefulWidget {
  const BayarSPP({Key? key}) : super(key: key);

  @override
  State<BayarSPP> createState() => _bayarSPPState();
}

// ignore: camel_case_types
class _bayarSPPState extends State<BayarSPP> {
  TextEditingController controllerNamaTerima = TextEditingController();
  TextEditingController controllerNamaSantri = TextEditingController();
  TextEditingController controllerNoTelp = TextEditingController();
  TextEditingController controllerJenisByr = TextEditingController();
  TextEditingController controllerJumlahByr = TextEditingController();
  TextEditingController controllerBln = TextEditingController();

  final phoneFormatter = MaskTextInputFormatter(
      mask: '(+##) ###-####-####', type: MaskAutoCompletionType.lazy);

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
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            const Padding(padding: EdgeInsets.all(5.0)),
            TextField(
              autocorrect: true,
              autofocus: true,
              keyboardType: TextInputType.name,
              enableInteractiveSelection: true,
              controller: controllerNamaTerima,
              decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: "Penerima",
                  labelStyle: const TextStyle(fontSize: 15),
                  hintText: "Masukkan nama penerima",
                  hintStyle: const TextStyle(fontSize: 15),
                  prefixIcon: const Icon(Icons.person)),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            TextField(
              autocorrect: true,
              autofocus: false,
              keyboardType: TextInputType.name,
              enableInteractiveSelection: true,
              controller: controllerNamaSantri,
              decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: "Santri",
                  labelStyle: const TextStyle(fontSize: 15),
                  hintText: "Masukkan nama santri",
                  hintStyle: const TextStyle(fontSize: 15),
                  prefixIcon: const Icon(Icons.person_add)),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            TextField(
              inputFormatters: [phoneFormatter],
              maxLength: 19,
              autocorrect: true,
              autofocus: false,
              keyboardType: TextInputType.number,
              enableInteractiveSelection: true,
              controller: controllerNoTelp,
              decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: "Nomor Telepon",
                  labelStyle: const TextStyle(fontSize: 15),
                  hintText: "Masukkan nomor telepon",
                  hintStyle: const TextStyle(fontSize: 15),
                  prefixIcon: const Icon(Icons.phone)),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            TextField(
                autocorrect: true,
                autofocus: false,
                keyboardType: TextInputType.name,
                enableInteractiveSelection: true,
                controller: controllerJenisByr,
                decoration: InputDecoration(
                    fillColor: Colors.lightBlue[50],
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    labelText: "Jenis Pembayaran",
                    labelStyle: const TextStyle(fontSize: 15),
                    hintText: "Masukkan jenis pembayaran",
                    hintStyle: const TextStyle(fontSize: 15),
                    prefixIcon: const Icon(Icons.credit_card))),
            const Padding(padding: EdgeInsets.all(5.0)),
            TextField(
              autocorrect: true,
              autofocus: false,
              keyboardType: TextInputType.number,
              enableInteractiveSelection: true,
              controller: controllerJumlahByr,
              decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: "Jumlah Bayar",
                  labelStyle: const TextStyle(fontSize: 15),
                  hintText: "Masukkan jumlah bayar",
                  hintStyle: const TextStyle(fontSize: 15),
                  prefixIcon: const Icon(Icons.payments),
                  prefixText: "Rp "),
            ),
            const Padding(padding: EdgeInsets.all(5.0)),
            TextField(
              autocorrect: true,
              autofocus: false,
              keyboardType: TextInputType.name,
              enableInteractiveSelection: true,
              controller: controllerBln,
              decoration: InputDecoration(
                  fillColor: Colors.lightBlue[50],
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  labelText: "Bulan",
                  labelStyle: const TextStyle(fontSize: 15),
                  hintText: "Masukkan bulan",
                  hintStyle: const TextStyle(fontSize: 15),
                  prefixIcon: const Icon(Icons.receipt)),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            ElevatedButton(
                onPressed: () {
                  var nmTerima = controllerNamaTerima.text;
                  var nmSantri = controllerNamaSantri.text;
                  var noTelp = controllerNoTelp.text;
                  var jnsByr = controllerJenisByr.text;
                  var jmlByr = controllerJumlahByr.text;
                  var bln = controllerBln.text;
                  void getPDF() async {
                    final pdf = pw.Document();

                    //buat page
                    pdf.addPage(
                      pw.Page(
                        pageFormat: pd.PdfPageFormat.a4,
                        build: (pw.Context context) {
                          return pw.Column(
                            children: [
                              pw.Container(
                                  alignment: pw.Alignment.center,
                                  color: pd.PdfColors.green600,
                                  width: double.infinity,
                                  child: pw.Text("KWITANSI",
                                      style: pw.TextStyle(
                                          fontSize: 50,
                                          fontWeight: pw.FontWeight.bold))),
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
                                      "Penerima : $nmTerima\n\n"
                                      "Nama Santri : $nmSantri\n\n"
                                      "Nomor Telepon : $noTelp\n\n"
                                      "Jenis Pembayaran : $jnsByr\n\n"
                                      "Jumlah Bayar : Rp$jmlByr\n\n"
                                      "Bulan : $bln\n",
                                      style: const pw.TextStyle(fontSize: 25))),
                              pw.Container(
                                  alignment: pw.Alignment.bottomRight,
                                  width: double.infinity,
                                  child: pw.Text(
                                      "\n\n\n\n\n\n\n\n\nTTD \n"
                                      "\n\n"
                                      "($nmTerima)",
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

                  getPDF();
                },
                child: const Text(
                  "PRINT",
                )),
          ]),
        ),
      ),
    );
  }
}
