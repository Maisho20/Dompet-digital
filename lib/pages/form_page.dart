import 'package:flutter/material.dart';

class formPage extends StatefulWidget {
  final String NIM, Nama, TTL, Jurusan, ocrResult;

  const formPage(
      {Key? key,
      required this.NIM,
      required this.Nama,
      required this.TTL,
      required this.Jurusan,
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
  final _nimController = TextEditingController();
  final _namaController = TextEditingController();
  final _ttlController = TextEditingController();
  final _jurusanController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _controllerNIM = TextEditingController(text: widget.NIM);
    // _controllerNama = TextEditingController(text: widget.Nama);
    // _controllerTTL = TextEditingController(text: widget.TTL);
    // _controllerJurusan = TextEditingController(text: widget.Jurusan);

    //controller 2
    _nimController.text = findNIM(widget.NIM);
    _namaController.text = findNama(widget.Nama);
    _ttlController.text = findTTL(widget.TTL);
    _jurusanController.text = findJurusan(widget.Jurusan);
  }

  String findNIM(String text) {
    final RegExp regExp = RegExp(r'\b\d{16}\b');
    final Match? match = regExp.firstMatch(text);

    if (match != null) {
      final String NIM = text.substring(match.start, match.end);
      return NIM;
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

  String findJurusan(String text) {
    final RegExp regExp = RegExp(r'\b[a-zA-Z]{2,}\b');
    final Match? match = regExp.firstMatch(text);

    if (match != null) {
      final String Jurusan = text.substring(match.start, match.end);
      return Jurusan;
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
                controller: _nimController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'NIM',
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
                controller: _jurusanController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Jurusan',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, {
                    'NIM': _nimController.text,
                    'Nama': _namaController.text,
                    'TTL': _ttlController.text,
                    'Jurusan': _jurusanController.text,
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
