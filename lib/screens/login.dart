import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: <Widget>[
              Text(
                "Log in",
                style: TextStyle(
                  fontSize: 30.0,

                ),
                textAlign: TextAlign.left,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Email address..."
                ),
                keyboardType: TextInputType.emailAddress,
                autovalidate: true,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Password...",
                ),
                keyboardType: TextInputType.text,
                obscureText: true,
                autovalidate: true,
              ),
              SizedBox(height: 6.0,),
              ConstrainedBox(
                constraints: BoxConstraints.expand(height: 40.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed("/main");
                  },
                  child: Text("Login"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}