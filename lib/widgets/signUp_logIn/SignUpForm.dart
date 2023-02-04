import 'package:flutter/material.dart';
import 'package:flutter_web/routing/routes.dart';

// Define a custom Form widget.
class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  SignUpFormState createState() {
    return SignUpFormState();
  }
}

// Define a corresponding State class.
// This class holds data related to the form.
class SignUpFormState extends State<SignUpForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'What do people call you?',
              labelText: 'Full Name *',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.man),
              hintText: 'Asign a user name for your account.',
              labelText: 'User Name *',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.email_rounded),
              hintText: 'Enter your email.',
              labelText: 'Email *',
            ),
          ),
          TextFormField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
              icon: Icon(Icons.password_rounded),
              hintText: 'Set password for your account.',
              labelText: 'Password *',
            ),
          ),
          TextFormField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
              icon: Icon(Icons.lock_rounded),
              hintText: 'Confirm password for your account.',
              labelText: 'Confirm Password *',
            ),
          ),
          SizedBox(height: 50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 238, 238, 238),
                  foregroundColor: Color.fromARGB(255, 0, 0, 0),
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesName.home);
                },
                child: const Text('Cancel'),
              ),
              SizedBox(width: 40.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                  }
                },
                child: const Text('Create Account'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
