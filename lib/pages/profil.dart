import 'package:dompet_digital/constants.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

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
                              Navigator.pushNamed(context, '/register');
                            },
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 130),
                        child: Text(
                          'Profil',
                          style: whiteTextStyle.copyWith(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text(
                      'Please Set Up Your Profile',
                      style: scndTextStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    width: 134,
                    height: 134,
                    margin: EdgeInsets.only(top: 40),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        backgroundColor: loginBtnColor,
                      ),
                      onPressed: () {},
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        iconSize: 80,
                        icon: Icon(Icons.emoji_people),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 33),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "First Name",
                          style: thirdTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: scndColor,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter your first name",
                              hintStyle: thirdTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Last Name",
                          style: thirdTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: scndColor,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter your last name",
                              hintStyle: thirdTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 200,
                        ),
                      ],
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
