import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/views/responsive_layout.dart';

class Education extends StatelessWidget {
  const Education({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ResponsiveLayout.isDesktop(context)
          ? _desktopBody(context)
          : _mobileAndTabletBody(context),
    );
  }

  Padding _desktopBody(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  _titleWidget('Education', 'assets/education-cap.svg'),
                  const SizedBox(height: 16),
                  _customContainer(
                      title: 'SMK Citra Negara Depok',
                      year: '2016',
                      year2: '2019',
                      width: MediaQuery.of(context).size.width * 0.35,
                      context: context),
                  const SizedBox(height: 16),
                  _customContainer(
                      title: 'University Bina Sarana Informatika',
                      year: '2019',
                      year2: 'Present',
                      width: MediaQuery.of(context).size.width * 0.35,
                      context: context),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _titleWidget('Experience', 'assets/experience.svg'),
                const SizedBox(height: 16),
                _customContainer(
                    title: '''
    Crew Store Reguler
    PT Midi Utama Indonesia Tbk''',
                    year: '2017',
                    year2: '2019',
                    width: MediaQuery.of(context).size.width * 0.35,
                    contents: '''
    • Serving payment transactions and providing customer service
    
    • Unloading stock
    
    • Manage and organize the placement of items on the shelves
    ''',
                    context: context),
                const SizedBox(height: 16),
                _customContainer(
                    title: '''
    Flutter Developer · Internship
    PT Marka Kreasi Persada''',
                    year: '2022',
                    width: MediaQuery.of(context).size.width * 0.35,
                    contents: '''
    It's 6 months of learning flutter under pressure from zero to intermediate, but i learn a lot of things:
    
    • Dart
    
    • Fundamental Flutter
    
    • Firebase
    
    • API
    
    • Capstone project to make GetVaccine apps, and i am responsible for creating user interface and apps functionality
    ''',
                    context: context),
                const SizedBox(height: 16),
                _customContainer(
                    title: '''
    Mobile App Developer · Internship
    PT Nurul Fikri Cipta Inovasi''',
                    year: 'Present',
                    width: MediaQuery.of(context).size.width * 0.35,
                    context: context),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _mobileAndTabletBody(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _titleWidget('Education', 'assets/education-cap.svg'),
          const SizedBox(height: 16),
          _customContainer(
              title: 'SMK Citra Negara Depok',
              year: '2016',
              year2: '2019',
              width: MediaQuery.of(context).size.width * 0.7,
              context: context),
          const SizedBox(height: 16),
          _customContainer(
              title: 'University Bina Sarana Informatika',
              year: '2019',
              year2: 'Present',
              width: MediaQuery.of(context).size.width * 0.7,
              context: context),
          const SizedBox(height: 32),
          _titleWidget('Experience', 'assets/experience.svg'),
          const SizedBox(height: 16),
          _customContainer(
              title: '''
Crew Store Reguler
PT Midi Utama Indonesia Tbk''',
              year: '2017',
              year2: '2019',
              width: MediaQuery.of(context).size.width * 0.7,
              contents: '''
• Serving payment transactions and providing customer service

• Unloading stock

• Manage and organize the placement of items on the shelves
''',
              context: context),
          const SizedBox(height: 16),
          _customContainer(
              title: '''
Flutter Developer · Internship
PT Marka Kreasi Persada''',
              year: '2022',
              width: MediaQuery.of(context).size.width * 0.7,
              contents: '''
It's 6 months of learning flutter under pressure from zero to intermediate, but i learn a lot of things:

• Dart

• Fundamental Flutter

• Firebase

• API

• Capstone project to make GetVaccine apps, and i am responsible for creating user interface and apps functionality
''',
              context: context),
          const SizedBox(height: 16),
          _customContainer(
              title: '''
Mobile App Developer · Internship
PT Nurul Fikri Cipta Inovasi''',
              year: 'Present',
              width: MediaQuery.of(context).size.width * 0.7,
              context: context),
        ],
      ),
    );
  }

  Row _titleWidget(String title, String icon) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 30,
          height: 30,
          color: Colors.white,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: bodyText1.copyWith(color: Colors.white),
        )
      ],
    );
  }

  Row _customContainer(
      {required String year,
      String? year2,
      required String title,
      String? contents,
      required double width,
      context}) {
    return Row(
      children: [
        SizedBox(
          width: 90,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _yearWidget(year),
                const SizedBox(height: 4),
                year2 == null ? const SizedBox() : _yearWidget(year2),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          width: width,
          decoration: BoxDecoration(
            color: Colors.grey.shade800.withOpacity(0.5),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: bodyText1.copyWith(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
                contents == null
                    ? const SizedBox()
                    : const SizedBox(
                        height: 12,
                      ),
                contents == null
                    ? const SizedBox()
                    : Text(contents, style: bodyText1),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _yearWidget(String year) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(
          width: 15,
          child: Divider(
            color: Colors.white,
            thickness: 2,
          ),
        ),
        const SizedBox(width: 8),
        Text(
          year,
          style: bodyText2.copyWith(
              fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(width: 8),
        const SizedBox(
          width: 15,
          child: Divider(color: Colors.white, thickness: 2),
        ),
      ],
    );
  }
}
