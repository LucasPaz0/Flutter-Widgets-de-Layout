import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 350,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            border: Border.all(color: Colors.cyan, width: 2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                color: Colors.blue.shade100,
                child: Text(
                  'Strawberry Pavlova',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                  'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.cyan),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(Icons.star, size: 20, color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text('170 Reviews'),
                  ],
                ),
              ),

              SizedBox(height: 12),

              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.cyan),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    infoItem(Icons.kitchen, 'PREP:', '25 min'),
                    infoItem(Icons.timer, 'COOK:', '1 hr'),
                    infoItem(Icons.restaurant, 'FEEDS:', '4-6'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}

Widget infoItem(IconData icon, String label, String value) {
  return Column(
    children: [
      Icon(icon, size: 28, color: Colors.green),
      SizedBox(height: 8),
      Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
      Text(value),
    ],
  );
}