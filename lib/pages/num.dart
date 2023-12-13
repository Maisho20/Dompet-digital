import 'package:dompet_digital/constants.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

//login
class Num extends StatefulWidget {
  const Num({Key? key}) : super(key: key);

  @override
  _NumState createState() => _NumState();
}

class _NumState extends State<Num> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Container(
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
                              icon: Icon(
                                Icons.arrow_back,
                                color: scndColor,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/');
                              },
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 100),
                          child: Text(
                            'Phone Verification',
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
                        'We need to verify your phone number before getting started !',
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
                        'Add Your Active Phone Number',
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
                      child: IntlPhoneField(
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        initialCountryCode: 'ID',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
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
                            'Confirm',
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
      ),
    );
  }
}
