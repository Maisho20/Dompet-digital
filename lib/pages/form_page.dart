import 'package:flutter/material.dart';

class formPage extends StatefulWidget {
  final String NIK, Nama, TTL, Alamat, ocrResult;
  // NIK, Nama, TTL, Alamat, ocrResult

  const formPage(
      {Key? key,
      required this.NIK,
      required this.Nama,
      required this.TTL,
      required this.Alamat,
      required this.ocrResult})
      : super(key: key);

  @override
  _formPageState createState() => _formPageState();
}

class _formPageState extends State<formPage> {
  // TextEditingController _controllerNIM = TextEditingController();
  // TextEditingController _controllerNama = TextEditingController();
  // TextEditingController _controllerTTL = TextEditingController();
  // TextEditingController _controllerJurusan = TextEditingController();

  // final _formKey = GlobalKey<FormState>();
  final _nikController = TextEditingController();
  final _namaController = TextEditingController();
  final _ttlController = TextEditingController();
  final _alamatController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _controllerNIM = TextEditingController(text: widget.NIM);
    // _controllerNama = TextEditingController(text: widget.Nama);
    // _controllerTTL = TextEditingController(text: widget.TTL);
    // _controllerJurusan = TextEditingController(text: widget.Jurusan);

    //controller 2
    _nikController.text = findNIK(widget.NIK);
    _namaController.text = findNama(widget.Nama);
    _ttlController.text = findTTL(widget.TTL);
    _alamatController.text = findAlamat(widget.Alamat);
  }

  String findNIK(String text) {
    final RegExp regExp = RegExp(r'\b\d{16}\b');
    final Match? match = regExp.firstMatch(text);

    if (match != null) {
      final String NIK = text.substring(match.start, match.end);
      return NIK;
    } else {
      return '';
    }
  }

  String findNama(String text) {
    final RegExp regExp = RegExp(r'\b[a-zA-Z]{2,}\b');
    final Match? match = regExp.firstMatch(text);

    if (match != null) {
      final String Nama = text.substring(match.start, match.end);
      return Nama;
    } else {
      return '';
    }
  }

  String findTTL(String text) {
    final RegExp regExp = RegExp(r'\b\d{2}-\d{2}-\d{4}\b');
    final Match? match = regExp.firstMatch(text);

    if (match != null) {
      final String TTL = text.substring(match.start, match.end);
      final int year = int.parse(TTL.split('-').last);
      if (year < 2011) {
        return TTL;
      } else {
        return '';
      }
    } else {
      return '';
    }
  }

  String findAlamat(String text) {
    final RegExp regExp = RegExp(r'\b[a-zA-Z]{2,}\b');
    final Match? match = regExp.firstMatch(text);

    if (match != null) {
      final String Aurusan = text.substring(match.start, match.end);
      return Aurusan;
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: _nikController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'NIK',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: _namaController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nama',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: _ttlController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'TTL',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: TextField(
                controller: _alamatController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Alamat',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, {
                    'NIK': _nikController.text,
                    'Nama': _namaController.text,
                    'TTL': _ttlController.text,
                    'Alamat': _alamatController.text,
                  });
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
