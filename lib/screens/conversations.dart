import 'package:flutter/material.dart';

class ConversationsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConversationsScreenState();
  }

}

class ConversationsScreenState extends State<ConversationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversations"),
      ),
    );
  }

}