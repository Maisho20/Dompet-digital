import 'package:dompet_digital/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

//login
class Pincode extends StatefulWidget {
  const Pincode({Key? key}) : super(key: key);

  @override
  _PincodeState createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
  TextEditingController controller = TextEditingController();

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
              // margin: EdgeInsets.only(top: 70),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // children: [
                    //   Container(
                    //     width: 80,
                    //     height: 45,
                    //     child: ElevatedButton(
                    //       onPressed: () {
                    //         Navigator.pushNamed(context, '/login');
                    //       },
                    //       child: IconButton(
                    //         padding: EdgeInsets.zero,
                    //         icon: Icon(Icons.arrow_back),
                    //         onPressed: () {
                    //           Navigator.pop(context);
                    //         },
                    //       ),
                    //     ),
                    //   ),
                    //   SizedBox(
                    //     height: 20,
                    //   ),
                    //   Container(
                    //     margin: EdgeInsets.only(right: 130),
                    //     child: Text(
                    //       'Set Pin Code',
                    //       style: whiteTextStyle.copyWith(
                    //         fontSize: 30,
                    //         fontWeight: FontWeight.bold,
                    //         fontFamily: 'Poppins',
                    //       ),
                    //     ),
                    //   ),
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
                          'Set Pin Code',
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
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      'Please Set Your Own Pin Code',
                      style: scndTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      'Set Pin Code (6-Digit)',
                      style: scndTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: PinCodeTextField(
                      appContext: context,
                      obscureText: true,
                      obscuringCharacter: '*',
                      length: 6,
                      controller: controller,
                      cursorHeight: 19,
                      enableActiveFill: true,
                      textStyle: TextStyle(
                          fontSize: 25, fontWeight: FontWeight.normal),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        fieldWidth: 50,
                        activeColor: thirdColor,
                        inactiveColor: thirdColor,
                        selectedColor: thirdColor,
                        activeFillColor: thirdColor,
                        selectedFillColor: thirdColor,
                        inactiveFillColor: thirdColor,
                        borderRadius: BorderRadius.circular(8),
                        borderWidth: 1,
                      ),
                      onChanged: ((value) {
                        print(value);
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 100),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: loginBtnColor,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Save',
                          style: scndTextStyle.copyWith(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 200,
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
