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

class ktpPage extends StatefulWidget {
  final String NIM, Nama, TTL, Jurusan;
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
  const ktpPage(
      {Key? key,
      required this.NIM,
      required this.Nama,
      required this.TTL,
      required this.Jurusan
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
      })
      : super(key: key);
  // const ktpPage({Key? key}) : super(key: key);

  @override
  _ktpPageState createState() => _ktpPageState();
}

class _ktpPageState extends State<ktpPage> {
  CameraController? _controller;
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

  Future getImage() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        processImage();
        recognizeText();
      } else {
        // Use a logging framework instead of print
        debugPrint('No image selected.');
      }
    });
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 400,
                      height: 400,
                      child: FutureBuilder<void>(
                          future: _initializeControllerFuture,
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              // return _controller!.buildPreview();
                              return _controller != null
                                  ? AspectRatio(
                                      aspectRatio:
                                          _controller!.value.aspectRatio,
                                      child: CameraPreview(_controller!),
                                    )
                                  : Container();
                            } else {
                              return Center(child: CircularProgressIndicator());
                            }
                          }),
                    ),
                  ),

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
                          ElevatedButton(
                            onPressed: () async {
                              try {
                                await _initializeControllerFuture;

                                final image = await _controller?.takePicture();

                                _image = File(image!.path);
                                final RecognizedText = await recognizeText();

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => formPage(
                                        NIM: widget.NIM,
                                        Nama: widget.Nama,
                                        TTL: widget.TTL,
                                        Jurusan: widget.Jurusan,
                                        // GolDarah: widget.GolDarah,
                                        // Alamat: widget.Alamat,
                                        // RT: widget.RT,
                                        // RW: widget.RW,
                                        // KelDesa: widget.KelDesa,
                                        // Kecamatan: widget.Kecamatan,
                                        // Agama: widget.Agama,
                                        // StatusPerkawinan: widget.StatusPerkawinan,
                                        // Pekerjaan: widget.Pekerjaan,
                                        // Kewarganegaraan: widget.Kewarganegaraan,
                                        ocrResult: RecognizedText),
                                  ),
                                );
                              } catch (e) {
                                print(e);
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: whiteColor,
                              shape: CircleBorder(),
                              side: BorderSide(color: fourthColor, width: 2),
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
                          SizedBox(height: 15),
                          Text('Or'),
                          SizedBox(height: 25),
                          Container(
                            width: 370,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () async {
                                await getImage();
                                final RecognizedText = await recognizeText();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => formPage(
                                        NIM: widget.NIM,
                                        Nama: widget.Nama,
                                        TTL: widget.TTL,
                                        Jurusan: widget.Jurusan,
                                        // GolDarah: widget.GolDarah,
                                        // Alamat: widget.Alamat,
                                        // RT: widget.RT,
                                        // RW: widget.RW,
                                        // KelDesa: widget.KelDesa,
                                        // Kecamatan: widget.Kecamatan,
                                        // Agama: widget.Agama,
                                        // StatusPerkawinan: widget.StatusPerkawinan,
                                        // Pekerjaan: widget.Pekerjaan,
                                        // Kewarganegaraan: widget.Kewarganegaraan,
                                        ocrResult: RecognizedText),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: loginBtnColor,
                              ),
                              child: Text(
                                'Upload Foto KTP',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
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
