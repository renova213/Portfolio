import 'package:flutter/cupertino.dart';
import 'package:portfolio/views/models/project_model.dart';
import 'package:portfolio/views/models/skill_model.dart';

class PortfolioProvider extends ChangeNotifier {
  final List<SkillModel> _skillList = [
    SkillModel(urlImage: 'https://i.ibb.co/J3hTy13/dart.png', tools: 'Dart'),
    SkillModel(
        urlImage: 'https://i.ibb.co/D5FGnCg/Untitled-removebg-preview.png',
        tools: 'Flutter'),
    SkillModel(
        urlImage: 'https://i.ibb.co/tDLszNn/Untitled-removebg-preview-1.png',
        tools: 'Go'),
    SkillModel(
        urlImage: 'https://i.ibb.co/QYPLmKP/1335026-removebg-preview.png',
        tools: 'Firebase'),
    SkillModel(
        urlImage:
            'https://i.ibb.co/wpS9BTP/Visual-Studio-Code-1-35-icon-svg-removebg-preview.png',
        tools: 'VsCode'),
  ];
  List<SkillModel> get skillList => _skillList;

  final List<ProjectModel> _projects = [
    ProjectModel(
        description:
            "Simple application to show random cat image and build with clean architecture design pattern.",
        titleProject: "Random Cat",
        urlImage: "https://i.ibb.co/PTddwZj/Untitled.png",
        linkGithub: "https://github.com/renova213/random_cat_image",
        linkLive: "https://renova213.github.io/random_cat_image/#/"),
  ];
  List<ProjectModel> get projects => _projects;
}
