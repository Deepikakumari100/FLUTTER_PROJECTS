import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(width: 20), // Placeholder to balance settings icon
                ),
                Center(
                  child: Text(
                    "Home",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.settings, size: 20),
                ),
              ],
            ),
            SizedBox(height: 40),
            Center(
              child: Column(
                children: [
                  Text(
                    "Welcome to Our App",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 12),
                  Text(
                    "Explore the features and information we offer.\nStay updated with the latest news and insights.",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Text("App Highlights", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.explore, size: 24),
              ),
              title: Text("Explore", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Discover new content and features", style: TextStyle(color: Colors.blueGrey)),
              onTap: () {},
            ),
            ListTile(
              leading: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.mail_outline, size: 24),
              ),
              title: Text("Contact", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Get in touch with us", style: TextStyle(color: Colors.blueGrey)),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
