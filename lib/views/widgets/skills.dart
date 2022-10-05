import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/views/responsive_layout.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return ResponsiveLayout(
      mobile: _body(
          width: width,
          height: height,
          crossAxisCount: 3,
          heightBody: height * 0.7,
          widthIcon: width * 0.1,
          heightIcon: height * 0.1),
      tablet: _body(
        width: width,
        height: height,
        crossAxisCount: 4,
        heightBody: height * 0.7,
        widthIcon: width * 0.09,
        heightIcon: height * 0.09,
      ),
      desktop: _body(
        width: width,
        height: height,
        crossAxisCount: 6,
        heightBody: height * 0.5,
        widthIcon: width * 0.08,
        heightIcon: height * 0.08,
      ),
    );
  }

  SizedBox _body(
      {required double width,
      required double height,
      required int crossAxisCount,
      required heightBody,
      required double heightIcon,
      required double widthIcon}) {
    return SizedBox(
      height: heightBody,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.1),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'react.svg',
                    width: 30,
                    height: 30,
                    color: Colors.black,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "PROGRAMMING LANGUAGE AND TOOLS",
                    style: headline6.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: widthIcon,
                          height: heightIcon,
                          child: Image.asset(
                            'dart.png',
                            width: widthIcon,
                            height: heightIcon,
                          ),
                        ),
                        const SizedBox(height: 5),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            "Dart",
                            style: bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
