import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/views/providers/portfolio_provider.dart';
import 'package:provider/provider.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return _body(context: context);
  }

  SizedBox _body({context}) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/react.svg',
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
            child: Center(
              child: Consumer<PortfolioProvider>(
                builder: (context, notifier, _) => ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: notifier.skillList.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 50,
                          height: 50,
                          child:
                              Image.network(notifier.skillList[index].urlImage),
                        ),
                        const SizedBox(height: 8),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            notifier.skillList[index].tools,
                            style: bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
