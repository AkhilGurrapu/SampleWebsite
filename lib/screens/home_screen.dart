import 'package:datasarva/screens/blog_screen.dart';
import 'package:flutter/material.dart';
import 'projects_screen.dart'; // Import the ProjectsScreen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DataSarva'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/logo.jpg'), // Replace with your background image
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo as the background
              //Image.asset('assets/logo.png', height: 100),
              SizedBox(height: 20),
              Text(
                'Blog & Projects',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BlogScreen()),
                  );
                },
                child: Text('Go to Blog'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  onPrimary: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProjectsScreen()), // Use ProjectsScreen
                  );
                },
                child: Text('Go to Projects'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
