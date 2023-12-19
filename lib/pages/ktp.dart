import 'package:dompet_digital/constants.dart';
import 'package:dompet_digital/pages/form_page.dart';
import 'package:flutter/material.dart';
import 'dart:io';
// import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:camera/camera.dart';
import 'package:image/image.dart' as img;
import 'package:http/http.dart' as http;

class ktpPage extends StatefulWidget {
  final String NIK, Nama, TTL, Alamat;
  // GolDarah,
  // Alamat,
  // RT,
  // RW,
  // KelDesa,
  // Kecamatan,
  // Agama,
  // StatusPerkawinan,
  // Pekerjaan,
  // Kewarganegaraan;
  const ktpPage({
    Key? key,
    required this.NIK,
    required this.Nama,
    required this.TTL,
    required this.Alamat,
    // required this.GolDarah,
    // required this.Alamat,
    // required this.RT,
    // required this.RW,
    // required this.KelDesa,
    // required this.Kecamatan,
    // required this.Agama,
    // required this.StatusPerkawinan,
    // required this.Pekerjaan,
    // required this.Kewarganegaraan
  }) : super(key: key);
  // const ktpPage({Key? key}) : super(key: key);

  @override
  _ktpPageState createState() => _ktpPageState();
}

class _ktpPageState extends State<ktpPage> {
  CameraController? _controller;
  // File? _imageFile;

  Future<void>? _initializeControllerFuture;

  File? _image;
  final picker = ImagePicker();

  Future<void>? processImage() async {
    //Read image from file
    img.Image? image = img.decodeImage(File(_image!.path).readAsBytesSync());

    if (image != null) {
      // Convert image to grayscale
      image = img.grayscale(image);

      // Increase contrast by 20%
      image = img.adjustColor(image, contrast: 50);

      image = img.adjustColor(image, brightness: 50);

      // Save the processed image
      File(_image!.path).writeAsBytesSync(img.encodeJpg(image));
    }
  }

  Future<String> recognizeText() async {
    final inputImage = InputImage.fromFile(_image!);
    final textRecognizer = GoogleMlKit.vision.textRecognizer();
    final RecognizedText recognizedText =
        await textRecognizer.processImage(inputImage);

    return recognizedText.text;
  }

  // Future getImage() async {
  //   final pickedFile = await picker.pickImage(source: ImageSource.camera);
  //   setState(() {
  //     if (pickedFile != null) {
  //       _image = File(pickedFile.path);
  //       processImage();
  //       recognizeText();
  //     } else {
  //       // Use a logging framework instead of print
  //       debugPrint('No image selected.');
  //     }
  //   });
  // }
  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _initializeCamera();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.medium,
    );

    _initializeControllerFuture = _controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
      _controller?.startImageStream((image) => null);
    });
  }

  Future<void> _uploadImage() async {
    try {
      if (_image == null) {
        print('Please select an image first.');
        return;
      }

      String apiUrl = 'https://fe42-182-4-135-173.ngrok-free.app/upload';

      var request = http.MultipartRequest('POST', Uri.parse(apiUrl));
      request.files.add(await http.MultipartFile.fromPath('img', _image!.path));

      var response = await request.send();
      if (response.statusCode == 200) {
        // Request successful
        print('Image uploaded successfully!');
        // Handle the response, if any
        // var responseData = await response.stream.toBytes();
        // var result = utf8.decode(responseData);
        // print(result);
      } else {
        // Request failed
        print('Failed to upload image. Status code: ${response.statusCode}');
      }
    } catch (error) {
      // Handle errors
      print('Error uploading image: $error');
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
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
            child: Container(
              child: Column(
                children: [
                  //Header
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 35,
                      ),
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
                              Navigator.pushNamed(context, '/');
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 58,
                      ),
                      Container(
                        child: Text(
                          'Scan KTP',
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
                    height: 25,
                  ),

                  if (_image != null)
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 330,
                        height: 410,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          image: DecorationImage(
                            image: FileImage(_image!),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(width: 8, color: Colors.black),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    )
                  else
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: 330,
                        height: 410,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(width: 6, color: Colors.black12),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: const Text(
                          'Image should appear here!',
                          style: TextStyle(fontSize: 20, color: Colors.pink),
                        ),
                      ),
                    ),

                  SizedBox(
                    height: 20,
                  ),

                  //Container 3
                  Positioned(
                    bottom: 45,
                    left: 0,
                    right: 0,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                // onPressed: () async {
                                //   try {
                                //     await _initializeControllerFuture;

                                //     final image = await _controller?.takePicture();

                                //     _image = File(image!.path);
                                //     final RecognizedText = await recognizeText();

                                //     Navigator.push(
                                //       context,
                                //       MaterialPageRoute(
                                //         builder: (context) => formPage(
                                //             NIK: widget.NIK,
                                //             Nama: widget.Nama,
                                //             TTL: widget.TTL,
                                //             Alamat: widget.Alamat,
                                //             // GolDarah: widget.GolDarah,
                                //             // Alamat: widget.Alamat,
                                //             // RT: widget.RT,
                                //             // RW: widget.RW,
                                //             // KelDesa: widget.KelDesa,
                                //             // Kecamatan: widget.Kecamatan,
                                //             // Agama: widget.Agama,
                                //             // StatusPerkawinan: widget.StatusPerkawinan,
                                //             // Pekerjaan: widget.Pekerjaan,
                                //             // Kewarganegaraan: widget.Kewarganegaraan,
                                //             ocrResult: RecognizedText),
                                //       ),
                                //     );
                                //   } catch (e) {
                                //     print(e);
                                //   }
                                // },
                                onPressed: () {
                                  _getImage(ImageSource.camera);
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: whiteColor,
                                  shape: CircleBorder(),
                                  side:
                                      BorderSide(color: fourthColor, width: 2),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(25),
                                  child: Icon(
                                    FontAwesomeIcons.camera,
                                    color: loginBtnColor2,
                                    size: 30,
                                  ),
                                ),
                              ),
                              if (_image != null)
                                SizedBox(
                                  width: 40,
                                ),
                              if (_image != null)
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      backgroundColor: loginBtnColor,
                                    ),
                                    child: Icon(Icons.done)),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Or',
                            style: whiteTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 25),
                          Container(
                            width: 270,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: loginBtnColor,
                              ),
                              onPressed: () {
                                _getImage(ImageSource.gallery);
                              },
                              child: Text(
                                'Galery',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          )
                          //   Container(
                          //     width: 370,
                          //     height: 50,
                          //     child: ElevatedButton(
                          //       onPressed: () async {
                          //         await getImage();
                          //         final RecognizedText = await recognizeText();
                          //         Navigator.push(
                          //           context,
                          //           MaterialPageRoute(
                          //             builder: (context) => formPage(
                          //                 NIK: widget.NIK,
                          //                 Nama: widget.Nama,
                          //                 TTL: widget.TTL,
                          //                 Alamat: widget.Alamat,
                          //                 // GolDarah: widget.GolDarah,
                          //                 // Alamat: widget.Alamat,
                          //                 // RT: widget.RT,
                          //                 // RW: widget.RW,
                          //                 // KelDesa: widget.KelDesa,
                          //                 // Kecamatan: widget.Kecamatan,
                          //                 // Agama: widget.Agama,
                          //                 // StatusPerkawinan: widget.StatusPerkawinan,
                          //                 // Pekerjaan: widget.Pekerjaan,
                          //                 // Kewarganegaraan: widget.Kewarganegaraan,
                          //                 ocrResult: RecognizedText),
                          //           ),
                          //         );
                          //       },
                          //       style: ElevatedButton.styleFrom(
                          //         shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(15),
                          //         ),
                          //         backgroundColor: loginBtnColor,
                          //       ),
                          //       child: Text(
                          //         'Upload Foto KTP',
                          //         style: whiteTextStyle.copyWith(
                          //           fontSize: 20,
                          //           fontWeight: FontWeight.bold,
                          //           fontFamily: 'Poppins',
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
