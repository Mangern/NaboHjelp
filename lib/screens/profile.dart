import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: RaisedButton(
        onPressed: () {
          // TODO: Logout code
          Navigator.of(context).pushReplacementNamed("/login");
        },
        child: Text("Log out"),
      ),
    );
  }

}