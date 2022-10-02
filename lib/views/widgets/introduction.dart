import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/views/responsive_layout.dart';

import '../../common/constants.dart';

class Introduction extends StatelessWidget {
  const Introduction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height,
      width: ResponsiveLayout.isMobile(context)
          ? MediaQuery.of(context).size.width * 0.7
          : ResponsiveLayout.isTablet(context)
              ? MediaQuery.of(context).size.width * 0.5
              : MediaQuery.of(context).size.width * 0.4,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Welcome to my portfolio website!",
              style: caption,
            ),
            const SizedBox(height: 24),
            Text(
              "Hi everyone. I'm",
              style: headline4.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              "Rizco renova",
              style: headline4.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.greenAccent),
            ),
            const SizedBox(height: 16),
            Text(
                "I always felt curious about technology, and i believe that digital transformation will be the key to facing any future challenges.",
                textAlign: TextAlign.center,
                style: bodyText1),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.facebook, color: Colors.grey),
                  iconSize: 25,
                ),
                IconButton(
                  onPressed: () {},
                  icon:
                      SvgPicture.asset('assets/github.svg', color: Colors.grey),
                  iconSize: 25,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/linkedin.svg',
                    color: Colors.grey,
                  ),
                  iconSize: 30,
                ),
              ],
            ),
            const SizedBox(height: 32),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text("Education", style: bodyText2),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Skills", style: bodyText2),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Projects", style: bodyText2),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Contact Me", style: bodyText2),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Image.asset(
              'assets/arrow_down.gif',
              height: 30,
              width: 30,
              color: Colors.grey.shade500,
            ),
          ],
        ),
      ),
    );
  }
}
