import 'package:dompet_digital/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class formPage extends StatefulWidget {
  // final String NIK, Nama, TTL, Alamat, ocrResult;
  // NIK, Nama, TTL, Alamat, ocrResult

  // const formPage(
  //     {Key? key,
  //     required this.NIK,
  //     required this.Nama,
  //     required this.TTL,
  //     required this.Alamat,
  //     required this.ocrResult})
  //     : super(key: key);
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
        .get(Uri.parse('https://86c4-114-6-31-174.ngrok-free.app/get_data'));

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color(0xFF213C48), Color(0xFF332044)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: data == null
                ? const CircularProgressIndicator()
                : data.isEmpty
                    ? Text(
                        'No data available',
                        style: TextStyle(
                          color: whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      )
                    : Column(
                        children: [
                          //header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 63,
                                height: 34.42,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor: loginBtnColor,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(Icons.arrow_back),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/ktp');
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 100),
                                child: Text(
                                  'Form Data',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          //form
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: TextField(
                              controller: nikController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'NIK',
                                filled: true,
                                fillColor: whiteColor.withOpacity(0.9),
                                hintStyle: thirdTextStyle.copyWith(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  color: thirdColor.withOpacity(0.6),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: TextField(
                              controller: namaController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Nama',
                                filled: true,
                                fillColor: whiteColor.withOpacity(0.9),
                                hintStyle: thirdTextStyle.copyWith(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  color: thirdColor.withOpacity(0.6),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: TextField(
                              controller: ttlController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'TTL',
                                filled: true,
                                fillColor: whiteColor.withOpacity(0.9),
                                hintStyle: thirdTextStyle.copyWith(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  color: thirdColor.withOpacity(0.6),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(10),
                            child: TextField(
                              controller: alamatController,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Alamat',
                                filled: true,
                                fillColor: whiteColor.withOpacity(0.9),
                                hintStyle: thirdTextStyle.copyWith(
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  color: thirdColor.withOpacity(0.6),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20,
                                  vertical: 15,
                                ),
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
                                Navigator.pushNamed(context, '/num');
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: loginBtnColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text('Submit'),
                            ),
                          ),
                        ],
                      ),
          ),
        ),
      ),
    );
  }
}
