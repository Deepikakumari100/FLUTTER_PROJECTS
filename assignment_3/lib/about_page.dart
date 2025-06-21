// about_page.dart
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios, size: 20),
                    onPressed: () {
                      // Do nothing since this page is controlled by bottom nav
                    },
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        "About",
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 48), // placeholder to center text
                ],
              ),
              SizedBox(height: 30),
              Text("Our Mission", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                "Our mission is to provide users with a comprehensive and reliable source of information on a wide range of topics. We strive to make knowledge accessible to everyone, fostering curiosity and lifelong learning.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Text("Background", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                "This app was developed by a team of passionate individuals dedicated to creating a valuable resource for users seeking information. We believe in the power of knowledge to empower individuals and contribute to a more informed society.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 30),
              Text("Contact Us", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text(
                "If you have any questions, feedback, or suggestions, please don't hesitate to reach out to us at support@infoapp.com. We value your input and are committed to continuously improving our app.",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
