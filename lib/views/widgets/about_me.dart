import 'package:flutter/material.dart';
import 'package:portfolio/common/clipper.dart';
import 'package:portfolio/views/responsive_layout.dart';

import '../../common/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ClipPath(
      clipper: Clipper(),
      child: ResponsiveLayout(
        mobile: _bodyMobile(
            widthBody: width,
            heightBody: height,
            widthImage: width * 0.3,
            heightImage: height * 0.3),
        tablet: _body(
            widthBody: width,
            heightBody: height * 0.7,
            width: width,
            height: height),
        desktop: _body(
            widthBody: width,
            heightBody: height * 0.7,
            width: width,
            height: height),
      ),
    );
  }

  Container _body(
      {required double widthBody,
      required double heightBody,
      required double width,
      required double height}) {
    return Container(
      width: widthBody,
      height: heightBody,
      color: secondColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "ABOUT ME",
                style: headline5.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                width: width * 0.7,
                child: Row(
                  children: [
                    Container(
                      width: width * 0.2,
                      height: height * 0.4,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                        image: DecorationImage(
                            image: AssetImage('photo.jpg'), fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(width: width * 0.1),
                    Expanded(
                      child: Text(
                        '''Student at University Bina Sarana Informatika. I'm passionate in developing mobile apps using Flutter and dart as programming language. Always keep learning and exploring this framework.
          
          I always felt curious about technology, and i believe that digital transformation will be the key to facing any future challenges.
          
                          ''',
                        style: bodyText1.copyWith(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container _bodyMobile(
      {required double widthBody,
      required double heightBody,
      required double widthImage,
      required double heightImage}) {
    return Container(
      width: widthBody,
      height: heightBody,
      color: secondColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                "ABOUT ME",
                style: headline5.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: widthImage,
                height: heightImage,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                  image: DecorationImage(
                      image: AssetImage('photo.jpg'), fit: BoxFit.fill),
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                child: Text(
                  '''Student at University Bina Sarana Informatika. I'm passionate in developing mobile apps using Flutter and dart as programming language. Always keep learning and exploring this framework.
          
I always felt curious about technology, and i believe that digital transformation will be the key to facing any future challenges.
          
                          ''',
                  style: bodyText1.copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
