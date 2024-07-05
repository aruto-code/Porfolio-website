import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Contact',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ContactItem(
            icon: Icons.email,
            contactText: 'your.email@example.com',
            link: 'mailto:your.email@example.com',
          ),
          ContactItem(
            icon: Icons.phone,
            contactText: '+123 456 7890',
            link: 'tel:+1234567890',
          ),
          ContactItem(
            icon: Icons.web,
            contactText: 'www.yourwebsite.com',
            link: 'https://www.yourwebsite.com',
          ),
          ContactItem(
            icon: Icons.link,
            contactText: 'linkedin.com/in/yourprofile',
            link: 'https://www.linkedin.com/in/yourprofile',
          ),
        ],
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String contactText;
  final String link;

  ContactItem({required this.icon, required this.contactText, required this.link});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _launchURL(link),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(icon, size: 24),
            SizedBox(width: 10),
            Text(
              contactText,
              style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
            ),
          ],
        ),
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
