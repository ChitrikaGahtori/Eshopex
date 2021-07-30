import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  // const SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your Email",
                labelText: "Email",
              ),
            )
          ],
        )
    );
  }
}
