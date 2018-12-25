import 'package:flutter/material.dart';

class FactsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FactsScreenState();
  }
}

class FactsScreenState extends State<FactsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nabofakta"),
      ),
      body: Container(
        color: Colors.teal,
      ),
    );
  }
}