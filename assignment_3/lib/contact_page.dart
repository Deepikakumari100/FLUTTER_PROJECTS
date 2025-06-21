// contact_page.dart
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios, size: 20),
                Expanded(
                  child: Center(
                    child: Text(
                      "Contact",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(width: 24),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "We'd love to hear from you! Whether you have a question, feedback, or just want to say hello, please don't hesitate to reach out.",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            Text("Contact Information", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Email"),
                Text("support@example.com"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Phone"),
                Text("+1 (555) 123-4567"),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Address"),
                Expanded(
                  child: Text(
                    "123 Main Street, Anytown, USA",
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text("Contact Form", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "Your  Name",
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                hintText: "Your  Email",
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 12),
            TextField(
              maxLines: 4,
              decoration: InputDecoration(
                hintText: "Your Message",
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(48),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              onPressed: () {},
              child: Text("Send Message", style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 30),
            Text("Follow Us", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 16),
            Center(
              child: Column(
                children: [
                  socialIconColumn(FontAwesomeIcons.facebookF, "Facebook"),
                  SizedBox(height: 20),
                  socialIconColumn(FontAwesomeIcons.twitter, "Twitter"),
                  SizedBox(height: 20),
                  socialIconColumn(FontAwesomeIcons.instagram, "Instagram"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget socialIconColumn(IconData icon, String label) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(16),
          ),
          child: FaIcon(icon, size: 28),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }
}
