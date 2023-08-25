import 'package:flutter/material.dart';
import 'package:plta_app/pages/login_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      LoginPage(),
    ];
    return Scaffold(
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => pages[index],
                ));
          },
          child: Container(
            margin: EdgeInsets.all(15),
            height: 50,
            decoration: BoxDecoration(color: Colors.indigo),
            alignment: Alignment.center,
            child: Text('Login'),
          ),
        ),
      ),
    );
  }
}
