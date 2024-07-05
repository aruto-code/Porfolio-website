import 'package:flutter/material.dart';

class SkillsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          SkillItem(skill: 'Flutter & Dart'),
          SkillItem(skill: 'Python'),
          SkillItem(skill: 'Machine Learning'),
          SkillItem(skill: 'Data Analysis'),
          SkillItem(skill: 'UI/UX Design'),
        ],
      ),
    );
  }
}

class SkillItem extends StatelessWidget {
  final String skill;

  SkillItem({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Text(
        skill,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
