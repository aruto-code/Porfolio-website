import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Projects',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ProjectItem(
            title: 'Drowsiness Detection',
            description: 'A system utilizing real-time image analysis to monitor driver facial expressions and trigger timely alerts.',
            link: 'https://github.com/aruto-code/Drowsiness-Detection/tree/master',
          ),
          ProjectItem(
            title: 'Enterprise AI',
            description: 'A sentiment analysis model capable of analyzing customer input in text, audio, and image formats.',
            link: 'https://github.com/aruto-code/Enterprise-AI/tree/master/sentiment-analysis',
          ),
          ProjectItem(
            title: 'Virtual Painters',
            description: 'A system that detects hand or pen tip gestures to paint accordingly on the screen.',
            link: 'https://github.com/aruto-code/Unleashing-Creativity-with-AI-Painters',
          ),
          ProjectItem(
            title: 'Aligarh Diaries',
            description: 'A project highlighting Aligarh’s transition into a smart city with a tourist guide and interactive citizen dashboard.',
            link: 'https://github.com/aruto-code/aligarh-diaries',
          ),
          ProjectItem(
            title: 'GeoXBeta',
            description: 'An attendance system using geofencing technology.',
            link: 'https://github.com/aruto-code/GeoX-Beta',
          ),
        ],
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  final String title;
  final String description;
  final String link;

  ProjectItem({required this.title, required this.description, required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(description, style: TextStyle(fontSize: 16)),
          GestureDetector(
            onTap: () => _launchURL(link),
            child: Text(
              'View here',
              style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
