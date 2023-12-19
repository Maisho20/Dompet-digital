import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
  // const formPage({super.key});

  @override
  // _formPageState createState() => _formPageState();
  State<formPage> createState() => _formPageState();
}

class _formPageState extends State<formPage> {
  TextEditingController nikController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController ttlController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController agamaController = TextEditingController();
  late List<Map<String, dynamic>> data;

  // final _formKey = GlobalKey<FormState>();
  // final _nikController = TextEditingController();
  // final _namaController = TextEditingController();
  // final _ttlController = TextEditingController();
  // final _alamatController = TextEditingController();

  @override
  void initState() {
    super.initState();
    data = <Map<String, dynamic>>[];
    fetchData();
    // _controllerNIM = TextEditingController(text: widget.NIM);
    // _controllerNama = TextEditingController(text: widget.Nama);
    // _controllerTTL = TextEditingController(text: widget.TTL);
    // _controllerJurusan = TextEditingController(text: widget.Jurusan);

    //controller 2
    // _nikController.text = findNIK(widget.NIK);
    // _namaController.text = findNama(widget.Nama);
    // _ttlController.text = findTTL(widget.TTL);
    // _alamatController.text = findAlamat(widget.Alamat);

    // Controller
  }

  void updateControllers() {
    // super.initState();
    nikController = TextEditingController(text: '${data.last['nik']}');
    namaController = TextEditingController(text: '${data.last['nama']}');
    ttlController = TextEditingController(text: '${data.last['ttl']}');
    alamatController = TextEditingController(text: '${data.last['alamat']}');
    agamaController = TextEditingController(text: '${data.last['agama']}');
  }

  Future<void> fetchData() async {
    final response = await http
        .get(Uri.parse('https://18ff-202-80-215-188.ngrok-free.app/get_data'));

    if (response.statusCode == 200) {
      // Jika request sukses, parse JSON
      final List<dynamic> jsonData = json.decode(response.body);
      setState(() {
        data = List<Map<String, dynamic>>.from(jsonData);
      });
      updateControllers();
    } else {
      // Jika request gagal, tampilkan pesan kesalahan
      print('Failed to load data');
    }
  }

  // String findNIK(String text) {
  //   final RegExp regExp = RegExp(r'\b\d{16}\b');
  //   final Match? match = regExp.firstMatch(text);

  //   if (match != null) {
  //     final String NIK = text.substring(match.start, match.end);
  //     return NIK;
  //   } else {
  //     return '';
  //   }
  // }

  // String findNama(String text) {
  //   final RegExp regExp = RegExp(r'\b[a-zA-Z]{2,}\b');
  //   final Match? match = regExp.firstMatch(text);

  //   if (match != null) {
  //     final String Nama = text.substring(match.start, match.end);
  //     return Nama;
  //   } else {
  //     return '';
  //   }
  // }

  // String findTTL(String text) {
  //   final RegExp regExp = RegExp(r'\b\d{2}-\d{2}-\d{4}\b');
  //   final Match? match = regExp.firstMatch(text);

  //   if (match != null) {
  //     final String TTL = text.substring(match.start, match.end);
  //     final int year = int.parse(TTL.split('-').last);
  //     if (year < 2011) {
  //       return TTL;
  //     } else {
  //       return '';
  //     }
  //   } else {
  //     return '';
  //   }
  // }

  // String findAlamat(String text) {
  //   final RegExp regExp = RegExp(r'\b[a-zA-Z]{2,}\b');
  //   final Match? match = regExp.firstMatch(text);

  //   if (match != null) {
  //     final String Aurusan = text.substring(match.start, match.end);
  //     return Aurusan;
  //   } else {
  //     return '';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page'),
      ),
      body: SingleChildScrollView(
        child: data == null
            ? const CircularProgressIndicator()
            : data.isEmpty
                ? const Text('No data available')
                : Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: TextField(
                          controller: nikController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'NIK',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: TextField(
                          controller: namaController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nama',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: TextField(
                          controller: ttlController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'TTL',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: TextField(
                          controller: alamatController,
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
                              'NIK': nikController.text,
                              'Nama': namaController.text,
                              'TTL': ttlController.text,
                              'Alamat': alamatController.text,
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
