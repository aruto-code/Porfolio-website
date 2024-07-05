
import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/experience_section.dart';
import 'components/education_section.dart';
import 'components/projects_section.dart';
import 'components/skills_section.dart';
import 'components/contact_section.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio Website'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            ExperienceSection(),
            EducationSection(),
            ProjectsSection(),
            SkillsSection(),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
