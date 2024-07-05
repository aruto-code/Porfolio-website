import 'package:flutter/material.dart';

class ExperienceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Experience',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ExperienceItem(
            title: 'Software Developer',
            company: 'Company A',
            duration: 'Jan 2020 - Present',
            description: 'Worked on various projects involving Flutter and backend technologies.',
          ),
          ExperienceItem(
            title: 'Intern',
            company: 'Company B',
            duration: 'Jun 2019 - Dec 2019',
            description: 'Assisted in developing mobile applications and maintaining the codebase.',
          ),
        ],
      ),
    );
  }
}

class ExperienceItem extends StatelessWidget {
  final String title;
  final String company;
  final String duration;
  final String description;

  ExperienceItem({required this.title, required this.company, required this.duration, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(company, style: TextStyle(fontSize: 16)),
            Text(duration, style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic)),
            SizedBox(height: 5),
            Text(description, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
