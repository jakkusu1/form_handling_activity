import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {

  final String? username;

  const DashboardPage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Dashboard, $username"),
            const SizedBox(height: 16,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Log Out"),
            ),
          ],
        ),
      ),
    );
  }
}
