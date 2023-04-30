import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mckenziechurch_project1/login/login_confirm.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _email,
          password: _password,
        );
        // Navigate to the home screen after successful login.
        Navigator.pushNamed(context, '/confirm_login');
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          // Show an error message if user is not found.
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('User not found.')),
          );
        } else if (e.code == 'wrong-password') {
          // Show an error message if password is incorrect.
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Wrong password.')),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Login',
              semanticsLabel: 'Login',
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              'First Name',
              semanticsLabel: 'First Name',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const TextField(
                decoration: InputDecoration(
                  hintText: 'Type first name here',
                  semanticCounterText: 'Type first name here',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                ),
                textAlign: TextAlign.center),
            const SizedBox(height: 10),
            const Text(
              'Last Name',
              semanticsLabel: 'Last Name',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 8),
            const TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Type last name here',
                  semanticCounterText: 'Type last name here',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                )),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                _submit();
                // Navigator.of(context, rootNavigator: true)
                //     .pushNamed('/confirm_login');
              },
              child:
                  const Text('I am finished', semanticsLabel: 'I am finished'),
            ),
            const SizedBox(height: 16),
            OutlinedButton(
                onPressed: () {
                  // go back to landing page
                  Navigator.pop(context);
                },
                child: const Text('Back', semanticsLabel: 'Back'))
          ],
        ),
      ),
    );
  }
}
