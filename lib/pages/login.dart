import 'package:dompet_digital/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool passwordVisible = true;
  bool checkboxValue = false;

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
              margin: EdgeInsets.symmetric(horizontal: 33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome Back",
                    style: whiteTextStyle.copyWith(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Email Address",
                        style: thirdTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: scndColor,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your email address",
                            hintStyle: thirdTextStyle.copyWith(
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              color: thirdColor.withOpacity(0.6),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        "Password",
                        style: thirdTextStyle.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: scndColor,
                        ),
                        child: TextField(
                          obscureText: passwordVisible,
                          decoration: InputDecoration(
                              hintText: "Enter your password",
                              hintStyle: thirdTextStyle.copyWith(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: thirdColor.withOpacity(0.6),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 15),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      passwordVisible = !passwordVisible;
                                    });
                                  },
                                  icon: Icon(
                                    passwordVisible
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 28,
                            height: 28,
                            decoration: BoxDecoration(
                              color: loginBtnColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Checkbox(
                              value: checkboxValue,
                              checkColor: Colors.white,
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                              activeColor: loginBtnColor,
                              tristate: false,
                              onChanged: (newBool) {
                                setState(() {
                                  checkboxValue = newBool!;
                                });
                              },
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Remember me",
                            style: rememberTextStyle.copyWith(
                              fontSize: 13,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: linkTextStyle.copyWith(
                          fontSize: 13,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 123,
                  ),
                  Container(
                    width: double.infinity,
                    height: 59,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: loginBtnColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: whiteTextStyle.copyWith(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 59,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: loginBtnColor2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                            "https://cdn-icons-png.flaticon.com/512/2504/2504739.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Text(
                            "Sign In with Google",
                            style: whiteTextStyle.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: thirdTextStyle.copyWith(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      ...[
                        RichText(
                          text: TextSpan(
                            text: 'Sign Up',
                            style: linkTextStyle.copyWith(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                            ),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/register');
                              },
                          ),
                        ),
                      ],
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
