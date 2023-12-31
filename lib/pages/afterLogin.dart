import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const afterLogin());
}

class afterLogin extends StatefulWidget {
  const afterLogin({super.key});

  @override
  State<afterLogin> createState() => _afterLoginState();
}

class _afterLoginState extends State<afterLogin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        // body: ListView(children: [
        //   Frame6(),
        // ]),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Frame6(),
            ],
          ),
        ),
      ),
    );
  }
}

class Frame6 extends StatefulWidget {
  @override
  State<Frame6> createState() => _Frame6State();
}

class _Frame6State extends State<Frame6> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 375,
          height: 812,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.50, -0.87),
              end: Alignment(-0.5, 0.87),
              colors: [Color(0xFF203048), Color(0xFF432148)],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                left: 223,
                top: 125,
                child: Container(
                  width: 84,
                  height: 87,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: Image.asset('assets/img/image 61.png').image,
                      // image: NetworkImage("https://via.placeholder.com/84x87"),
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
                        image: Image.asset('assets/img/image 62.png').image,
                        // image: NetworkImage("https://via.placeholder.com/225x232"),
                        fit: BoxFit.fill,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(97.07),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 32,
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
                            color:
                                Colors.white.withOpacity(0.15000000596046448),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.08,
                                color: Colors.white
                                    .withOpacity(0.30000001192092896),
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
                        left: 24,
                        top: 152,
                        child: SizedBox(
                          width: 65,
                          height: 18,
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
                        left: 245.96,
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
                                  child: Stack(children: [
                                    SvgPicture.asset(
                                        'assets/img/mastercard_logo.svg'),
                                  ]),
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
                          height: 26.31,
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
                        image: Image.asset('assets/img/image 64.png').image,
                        // image: NetworkImage("https://via.placeholder.com/35x36"),
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
                      image: Image.asset('assets/img/image 63.png').image,
                      // image: NetworkImage("https://via.placeholder.com/40x42"),
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
                left: 0,
                top: 421,
                child: Container(
                  width: 375,
                  height: 391,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 375,
                          height: 391,
                          decoration: ShapeDecoration(
                            color: Color(0xE5F0F2F4),
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1.08,
                                color: Colors.white
                                    .withOpacity(0.30000001192092896),
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16.25),
                                topRight: Radius.circular(16.25),
                              ),
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
                                  child: Stack(children: [
                                    SvgPicture.asset(
                                        'assets/img/external-link-red.svg'),
                                  ]),
                                ),
                              ),
                              Positioned(
                                left: 38,
                                top: 12,
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
                                top: 28,
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
                                child: Text(
                                  'Starbucks New York LLP',
                                  style: TextStyle(
                                    color: Color(0xFF141414),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.37,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 163,
                                top: 21,
                                child: Text(
                                  'NY, USA',
                                  style: TextStyle(
                                    color: Color(0xFF828282),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.37,
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
                                  child: Stack(children: [
                                    SvgPicture.asset(
                                        'assets/img/external-link-red.svg'),
                                  ]),
                                ),
                              ),
                              Positioned(
                                left: 38,
                                top: 12,
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
                                top: 28,
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
                                child: Text(
                                  'Wallmart Marketplace',
                                  style: TextStyle(
                                    color: Color(0xFF141414),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.37,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 163,
                                top: 21,
                                child: Text(
                                  'NY, USA',
                                  style: TextStyle(
                                    color: Color(0xFF828282),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.37,
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
                                    child: Stack(children: [
                                      SvgPicture.asset(
                                          'assets/img/external-link-green.svg'),
                                    ]),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 38,
                                top: 12,
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
                                top: 28,
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
                                child: Text(
                                  'From Catherine Pierce',
                                  style: TextStyle(
                                    color: Color(0xFF141414),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.37,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 163,
                                top: 21,
                                child: Text(
                                  'Code: 32548/765487',
                                  style: TextStyle(
                                    color: Color(0xFF828282),
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                    letterSpacing: 0.37,
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
                        left: 17,
                        top: 71,
                        child: Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: Image.asset('assets/img/image 67-2.png')
                                  .image,
                              // image: NetworkImage("https://via.placeholder.com/20x20"),
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
                left: -2,
                top: 719,
                child: Container(
                  width: 380,
                  height: 93,
                  child: Stack(
                    children: [
                      Positioned(
                        left: 3,
                        top: 0,
                        child: Container(
                          width: 375,
                          height: 93,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(27),
                                topRight: Radius.circular(27),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 22,
                        child: Container(
                          width: 380,
                          height: 49,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(
                            children: [
                              Positioned(
                                left: 8,
                                top: 0,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 6.66,
                                    left: 15,
                                    right: 15,
                                    bottom: 0.13,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Transform(
                                        transform: Matrix4.identity()
                                          ..translate(0.0, 0.0)
                                          ..rotateZ(-0.12),
                                        child: Container(
                                          width: 28,
                                          height: 28,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/img/icon.svg'),
                                            ],
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
                              ),
                              Positioned(
                                left: 105,
                                top: 0,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 7,
                                    left: 14,
                                    right: 13,
                                    bottom: 0.13,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                                'assets/img/search_24px.svg'),
                                          ],
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
                              ),
                              Positioned(
                                left: 200,
                                top: 0,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 7,
                                    left: 16,
                                    right: 15,
                                    bottom: 0.13,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                                'assets/img/error_24px.svg'),
                                          ],
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
                              ),
                              Positioned(
                                left: 296,
                                top: 0,
                                child: Container(
                                  padding: const EdgeInsets.only(
                                    top: 7,
                                    left: 24,
                                    right: 23,
                                    bottom: 0.13,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 24,
                                        height: 24,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                                'assets/img/mdi_people.svg'),
                                          ],
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
                              ),
                            ],
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
      ],
    );
  }
}
