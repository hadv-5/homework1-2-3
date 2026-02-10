import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Text(
                'عبدالهادي سعد',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 32, 1, 55),
                ),
              ),
              
              SizedBox(height: 10), 
              Text(
                '444311985', 
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700], 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
