import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email , _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Instagram',
              style: TextStyle(fontSize: 50, fontFamily: 'Billabong'),
            ),
            Form(
              key: _formKey,
                child: Column(
              mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                child: TextFormField(
                    decoration: InputDecoration(labelText: 'Email'),
                    validator: (input) => !input.contains('@') ? 'Please Enter A Valid Email' : null,
                  onSaved: (input) => _email = input,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  validator: (input) => input.length < 6 ? 'Must be atleast 6 characters' : null,
                  onSaved: (input) => _password = input,
                  obscureText: true,
                ),
              )
            ],))
          ],
        ),
      ),
    );
  }
}
