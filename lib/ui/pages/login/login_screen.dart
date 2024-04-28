import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          TextFormField(
            // controller: ,
            decoration: const InputDecoration(
              hintText: "email",
            ),
          ),
          TextFormField(
            // controller: ,
            decoration: const InputDecoration(
              hintText: "password",
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Login"),
          )
        ],
      ),
    );
  }
}
