import 'package:flutter/material.dart';

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          EducationItem(
            degree: 'B.Tech in Computer Science',
            institution: 'University X',
            duration: '2016 - 2020',
            description: 'Focused on software development, data structures, and algorithms.',
          ),
          EducationItem(
            degree: 'High School Diploma',
            institution: 'School Y',
            duration: '2014 - 2016',
            description: 'Major in Science with a focus on Mathematics and Physics.',
          ),
        ],
      ),
    );
  }
}

class EducationItem extends StatelessWidget {
  final String degree;
  final String institution;
  final String duration;
  final String description;

  EducationItem({required this.degree, required this.institution, required this.duration, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(degree, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(institution, style: TextStyle(fontSize: 16)),
            Text(duration, style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic)),
            SizedBox(height: 5),
            Text(description, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
