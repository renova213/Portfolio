import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/common/constants.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return _body(context: context);
  }

  SizedBox _body({context}) {
    final CollectionReference skills =
        FirebaseFirestore.instance.collection('skills');
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
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
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
              child: StreamBuilder(
                stream: skills.snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final data = snapshot.data!.docs[index];
                        return Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Image.network(
                                  data['urlImage'],
                                ),
                              ),
                              const SizedBox(height: 8),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Text(
                                  data['tools'],
                                  style: bodyText1,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
