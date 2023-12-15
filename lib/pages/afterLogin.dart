import 'package:flutter/material.dart';

class afterLogin extends StatefulWidget {
  const afterLogin({Key? key}) : super(key: key);

  @override
  _afterLoginState createState() => _afterLoginState();
}

class _afterLoginState extends State<afterLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        width: 375,
        height: 812,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: <Color>[Color(0xFF213C48), Color(0xFF332044)],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 223,
              top: 151,
              child: Container(
                width: 84,
                height: 87,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/84x87"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                  ),
                ),
              ),
            ),
            Positioned(
              left: -87,
              top: 337.33,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(-0.57),
                child: Container(
                  width: 225.49,
                  height: 232.23,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image:
                          NetworkImage("https://via.placeholder.com/225x232"),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(97.07),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 14,
              top: 171,
              child: Container(
                width: 311.11,
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 311.11,
                        height: 200,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.15000000596046448),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.08,
                              color:
                                  Colors.white.withOpacity(0.30000001192092896),
                            ),
                            borderRadius: BorderRadius.circular(16.25),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x110A2628),
                              blurRadius: 16.21,
                              offset: Offset(0, 17.56),
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24.42,
                      top: 152.09,
                      child: SizedBox(
                        width: 58.09,
                        height: 17.56,
                        child: Opacity(
                          opacity: 0.90,
                          child: Text(
                            '09/25',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.86,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 4.05,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24.42,
                      top: 106.16,
                      child: SizedBox(
                        width: 224.24,
                        height: 17.56,
                        child: Opacity(
                          opacity: 0.90,
                          child: Text(
                            '**** **** **** 1289',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.86,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 4.05,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 254.96,
                      top: 141.28,
                      child: Container(
                        width: 45.53,
                        height: 36.34,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 45.53,
                                height: 36.34,
                                child: Stack(children: []),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 23.07,
                      top: 49.73,
                      child: SizedBox(
                        width: 146.71,
                        height: 62.31,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: '\$5 750,',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.33,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  height: 0,
                                ),
                              ),
                              TextSpan(
                                text: '20',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 28.33,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 23.07,
                      top: 27.47,
                      child: SizedBox(
                        width: 127.49,
                        height: 13.15,
                        child: Opacity(
                          opacity: 0.54,
                          child: Text(
                            'Current Balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.17,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: -231.05,
              top: 208.75,
              child: Container(
                width: 232.09,
                height: 129.83,
                child: Stack(
                  children: [
                    Positioned(
                      left: 1.17,
                      top: 107.75,
                      child: SizedBox(
                        width: 50.22,
                        height: 15.18,
                        child: Opacity(
                          opacity: 0.90,
                          child: Text(
                            '09/25',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.85,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 3.50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 1.17,
                      top: 58.04,
                      child: SizedBox(
                        width: 193.89,
                        height: 15.18,
                        child: Opacity(
                          opacity: 0.90,
                          child: Text(
                            '**** **** **** 1289',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.85,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              letterSpacing: 3.50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 192.72,
                      top: 98.41,
                      child: Container(
                        width: 39.37,
                        height: 31.42,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 39.37,
                                height: 31.42,
                                child: Stack(children: []),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 19.25,
                      child: SizedBox(
                        width: 126.85,
                        height: 22.75,
                        child: Text(
                          '\$5,750,20',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.50,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w900,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: SizedBox(
                        width: 110.23,
                        height: 11.37,
                        child: Opacity(
                          opacity: 0.54,
                          child: Text(
                            'Current Balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.25,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 343,
              top: 185,
              child: Container(
                width: 269,
                height: 172.93,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 269,
                        height: 172.93,
                        decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.15000000596046448),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 0.94,
                              color:
                                  Colors.white.withOpacity(0.30000001192092896),
                            ),
                            borderRadius: BorderRadius.circular(14.05),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x110A2628),
                              blurRadius: 14.02,
                              offset: Offset(0, 15.18),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 21.11,
                      top: 131.50,
                      child: Opacity(
                        opacity: 0.90,
                        child: Text(
                          '09/25',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.86,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: 4.05,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 21.11,
                      top: 91.79,
                      child: Opacity(
                        opacity: 0.90,
                        child: Text(
                          '**** **** **** 1289',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.86,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 0,
                            letterSpacing: 4.05,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 212.67,
                      top: 122.16,
                      child: Container(
                        width: 39.37,
                        height: 31.42,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 39.37,
                                height: 31.42,
                                child: Stack(children: []),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 19.95,
                      top: 43,
                      child: Text(
                        '\$10 985,84',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28.33,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 19.95,
                      top: 23.75,
                      child: Opacity(
                        opacity: 0.54,
                        child: Text(
                          'Current Balance',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.17,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 44.55,
              top: 144,
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(0.71),
                child: Container(
                  width: 35.05,
                  height: 36.09,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage("https://via.placeholder.com/35x36"),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x16000000),
                        blurRadius: 12,
                        offset: Offset(0, 14),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 323,
              top: 364,
              child: Container(
                width: 40,
                height: 42,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/40x42"),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(217.02),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x16000000),
                      blurRadius: 17.36,
                      offset: Offset(0, 20.26),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 293.67,
              top: 17.33,
              child: Container(
                width: 66.66,
                height: 11.34,
                child: Stack(
                  children: [
                    Positioned(
                      left: 42.33,
                      top: 0,
                      child: Container(
                        width: 24.33,
                        height: 11.33,
                        child: Stack(children: []),
                      ),
                    ),
                    Positioned(
                      left: 22.03,
                      top: 0,
                      child: Container(
                        width: 15.27,
                        height: 10.97,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/15x11"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0.34,
                      child: Container(
                        width: 17,
                        height: 10.67,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/17x11"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 21,
              top: 12,
              child: Container(
                width: 54,
                height: 21,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              ),
            ),
            Positioned(
              left: 27,
              top: 98,
              child: Text(
                'Cards',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 34,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0.04,
                  letterSpacing: 0.37,
                ),
              ),
            ),
            Positioned(
              left: 179,
              top: 392,
              child: Container(
                width: 7,
                height: 7,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2.92,
                      offset: Offset(0, 1.17),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 191.83,
              top: 393.17,
              child: Container(
                width: 4.67,
                height: 4.67,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 2.92,
                      offset: Offset(0, 1.17),
                      spreadRadius: 0,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 421,
              child: Container(
                width: 375,
                height: 854,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 375,
                        height: 854,
                        decoration: ShapeDecoration(
                          color: Color(0xE5F0F2F4),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              width: 1.08,
                              color:
                                  Colors.white.withOpacity(0.30000001192092896),
                            ),
                            borderRadius: BorderRadius.circular(16.25),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x110A2628),
                              blurRadius: 16.21,
                              offset: Offset(0, 17.56),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 356,
                      child: Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(children: []),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 405,
                      child: Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 18.25,
                              top: 5,
                              child: Container(
                                width: 11.50,
                                height: 11.50,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://via.placeholder.com/11x11"),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      width: 1.50,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      color: Color(0xFFEDEFF1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 454,
                      child: Container(
                        width: 30,
                        height: 30,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(children: []),
                      ),
                    ),
                    Positioned(
                      left: 55,
                      top: 361,
                      child: Text(
                        'Access and limits',
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.37,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 55,
                      top: 410,
                      child: Text(
                        'Top up',
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.37,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 55,
                      top: 459,
                      child: Text(
                        'Change PIN',
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.37,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 356,
                      top: 346,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(3.14),
                        child: Container(
                          width: 298,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFCDCDDF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 356,
                      top: 395,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(3.14),
                        child: Container(
                          width: 298,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFCDCDDF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 356,
                      top: 444,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(3.14),
                        child: Container(
                          width: 298,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFCDCDDF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 356,
                      top: 493,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(3.14),
                        child: Container(
                          width: 298,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFCDCDDF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 360,
                      top: 106,
                      child: Transform(
                        transform: Matrix4.identity()
                          ..translate(0.0, 0.0)
                          ..rotateZ(3.14),
                        child: Container(
                          width: 343,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFCDCDDF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 17,
                      child: Text(
                        'Details',
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          letterSpacing: 0.37,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 42,
                      top: 72,
                      child: Text(
                        'USD 56*3254',
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.37,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 119,
                      child: Text(
                        'Transactions history',
                        style: TextStyle(
                          color: Color(0xFF141414),
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 0.37,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 151,
                      child: Container(
                        width: 332,
                        height: 42,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 4,
                              child: Container(
                                width: 26,
                                height: 26,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Stack(children: []),
                              ),
                            ),
                            Positioned(
                              left: 38,
                              top: 1,
                              child: Text(
                                '-\$2,7',
                                style: TextStyle(
                                  color: Color(0xFF141414),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  height: 0.08,
                                  letterSpacing: 0.37,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 38,
                              top: 18,
                              child: Text(
                                '12.01.2020 09:34',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.10,
                                  letterSpacing: 0.37,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 163,
                              top: 0,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Starbucks New York LLP  ',
                                      style: TextStyle(
                                        color: Color(0xFF141414),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.37,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'NY, USA',
                                      style: TextStyle(
                                        color: Color(0xFF828282),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.37,
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
                    Positioned(
                      left: 17,
                      top: 198,
                      child: Container(
                        width: 326,
                        height: 42,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 4,
                              child: Container(
                                width: 26,
                                height: 26,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  color: Colors.white.withOpacity(0.5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Stack(children: []),
                              ),
                            ),
                            Positioned(
                              left: 38,
                              top: 1,
                              child: Text(
                                '-\$135',
                                style: TextStyle(
                                  color: Color(0xFF141414),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  height: 0.08,
                                  letterSpacing: 0.37,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 38,
                              top: 18,
                              child: Text(
                                '11.01.2020 21:34',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.10,
                                  letterSpacing: 0.37,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 163,
                              top: 0,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Wallmart Marketplace  ',
                                      style: TextStyle(
                                        color: Color(0xFF141414),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.37,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'NY, USA',
                                      style: TextStyle(
                                        color: Color(0xFF828282),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.37,
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
                    Positioned(
                      left: 17,
                      top: 245,
                      child: Container(
                        width: 326,
                        height: 42,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 26,
                              top: 30,
                              child: Transform(
                                transform: Matrix4.identity()
                                  ..translate(0.0, 0.0)
                                  ..rotateZ(-3.14),
                                child: Container(
                                  width: 26,
                                  height: 26,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    color: Colors.white.withOpacity(0.5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Stack(children: []),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 38,
                              top: 1,
                              child: Text(
                                '+\$250',
                                style: TextStyle(
                                  color: Color(0xFF141414),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w900,
                                  height: 0.08,
                                  letterSpacing: 0.37,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 38,
                              top: 18,
                              child: Text(
                                '11.01.2020 18:08',
                                style: TextStyle(
                                  color: Color(0xFF828282),
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 0.10,
                                  letterSpacing: 0.37,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 163,
                              top: 0,
                              child: Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'From Catherine Pierce? ',
                                      style: TextStyle(
                                        color: Color(0xFF141414),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.37,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Code: 32548/765487',
                                      style: TextStyle(
                                        color: Color(0xFF828282),
                                        fontSize: 14,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: 0.37,
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
                    Positioned(
                      left: 314,
                      top: 71,
                      child: Container(
                        width: 45,
                        height: 24,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'See',
                              style: TextStyle(
                                color: Color(0xFFEB5757),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                letterSpacing: 0.37,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 265,
                      top: 300,
                      child: Container(
                        width: 104,
                        height: 24,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Full history',
                              style: TextStyle(
                                color: Color(0xFFEB5757),
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                                height: 0,
                                letterSpacing: 0.37,
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17,
                      top: 71,
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/20x20"),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 5,
                              offset: Offset(0, 2),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 721,
              child: Container(
                width: 375,
                height: 101,
                padding: const EdgeInsets.only(top: 9, bottom: 43),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x110A2628),
                      blurRadius: 14.96,
                      offset: Offset(0, 16.21),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 380,
                      height: 49,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              top: 6.66,
                              left: 15,
                              right: 15,
                              bottom: 0.13,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Transform(
                                  transform: Matrix4.identity()
                                    ..translate(0.0, 0.0)
                                    ..rotateZ(-0.12),
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 0.53),
                                Text(
                                  'My cards',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFEB5757),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 7,
                              left: 14,
                              right: 13,
                              bottom: 0.13,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [],
                                  ),
                                ),
                                const SizedBox(height: 2.87),
                                Text(
                                  'Payments',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF828282),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 7,
                              left: 16,
                              right: 15,
                              bottom: 0.13,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [],
                                  ),
                                ),
                                const SizedBox(height: 2.87),
                                Text(
                                  'Transfers',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF828282),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              top: 7,
                              left: 24,
                              right: 23,
                              bottom: 0.13,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [],
                                  ),
                                ),
                                const SizedBox(height: 2.87),
                                Text(
                                  'Profile',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF828282),
                                    fontSize: 10,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 120,
              top: 799,
              child: Container(
                width: 134,
                height: 5,
                decoration: ShapeDecoration(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // backgroundColor: const Color(0xffF5F5F5),
      // body: SafeArea(
      //   child: Column(
      //     children: [
      //       Container(
      //         margin: const EdgeInsets.only(top: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: [
      //             Container(
      //               margin: const EdgeInsets.only(left: 20),
      //               child: const Text(
      //                 'Dompet Digital',
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold,
      //                 ),
      //               ),
      //             ),
      //             Container(
      //               margin: const EdgeInsets.only(right: 20),
      //               child: Row(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.only(right: 10),
      //                     child: const Icon(
      //                       Icons.notifications,
      //                       color: Colors.black,
      //                     ),
      //                   ),
      //                   Container(
      //                     child: const Icon(
      //                       Icons.account_circle,
      //                       color: Colors.black,
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.only(top: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //               margin: const EdgeInsets.only(right: 10),
      //               child: const Icon(
      //                 Icons.account_circle,
      //                 color: Colors.black,
      //                 size: 100,
      //               ),
      //             ),
      //             Container(
      //               child: Column(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.only(bottom: 10),
      //                     child: const Text(
      //                       'Halo,',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                   Container(
      //                     child: const Text(
      //                       'Nama',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.only(top: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //               margin: const EdgeInsets.only(right: 10),
      //               child: const Icon(
      //                 Icons.account_balance_wallet,
      //                 color: Colors.black,
      //                 size: 100,
      //               ),
      //             ),
      //             Container(
      //               child: Column(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.only(bottom: 10),
      //                     child: const Text(
      //                       'Saldo',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                   Container(
      //                     child: const Text(
      //                       'Rp. 0',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.only(top: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //               margin: const EdgeInsets.only(right: 10),
      //               child: const Icon(
      //                 Icons.account_balance_wallet,
      //                 color: Colors.black,
      //                 size: 100,
      //               ),
      //             ),
      //             Container(
      //               child: Column(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.only(bottom: 10),
      //                     child: const Text(
      //                       'Saldo',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                   Container(
      //                     child: const Text(
      //                       'Rp. 0',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.only(top: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //               margin: const EdgeInsets.only(right: 10),
      //               child: const Icon(
      //                 Icons.account_balance_wallet,
      //                 color: Colors.black,
      //                 size: 100,
      //               ),
      //             ),
      //             Container(
      //               child: Column(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.only(bottom: 10),
      //                     child: const Text(
      //                       'Saldo',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                   Container(
      //                     child: const Text(
      //                       'Rp. 0',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Container(
      //         margin: const EdgeInsets.only(top: 20),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //               margin: const EdgeInsets.only(right: 10),
      //               child: const Icon(
      //                 Icons.account_balance_wallet,
      //                 color: Colors.black,
      //                 size: 100,
      //               ),
      //             ),
      //             Container(
      //               child: Column(
      //                 children: [
      //                   Container(
      //                     margin: const EdgeInsets.only(bottom: 10),
      //                     child: const Text(
      //                       'Saldo',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                   Container(
      //                     child: const Text(
      //                       'Rp. 0',
      //                       style: TextStyle(
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold,
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
