import 'package:ecom_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          //logo
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              'lib/assests/Nike-Logo.png',
              height: 120,
            ),
          ),

          const SizedBox(height: 48), // add vertical space

          //title
          const Text(
            "Just Do It",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          const SizedBox(height: 24), // add vertical space

          //subtitle
          const Text(
            "Brand new Sneakers and custom kiks made with premium quality",
            style: TextStyle(
              color: Color.fromARGB(255, 110, 107, 107),
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),

          const SizedBox(height: 34), // add vertical space

          // start new button
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: const Text(
                  'Shop Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
