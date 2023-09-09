import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/common/constants.dart';
import 'package:portfolio/views/projects/widgets/mobile_project_container.dart';

class MobileProjects extends StatelessWidget {
  const MobileProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final CollectionReference projects =
        FirebaseFirestore.instance.collection('projects');
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "PROJECTS",
            style: headline5.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 32),
          _projects(
              height: height,
              width: width,
              context: context,
              projects: projects),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  StreamBuilder _projects(
      {required double height,
      required double width,
      required BuildContext context,
      required CollectionReference projects}) {
    return StreamBuilder(
      stream: projects.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: snapshot.data.docs.length,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16,
                  child: Divider(),
                ),
                itemBuilder: (context, index) {
                  final data = snapshot.data!.docs[index];

                  return MobileProjectContainer(data: data);
                },
              ),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
