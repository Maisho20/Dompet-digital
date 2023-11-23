import 'package:dompet_digital/constants.dart';
import 'package:flutter/material.dart';

// class ktpPage extends StatefulWidget {
//   const ktpPage({Key? key}) : super(key: key);

//   @override
//   _ktpPageState createState() => _ktpPageState();
// }

// class _ktpPageState extends State<ktpPage> {

class ktpPage extends StatelessWidget {
  const ktpPage({Key? key}) : super(key: key);
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
