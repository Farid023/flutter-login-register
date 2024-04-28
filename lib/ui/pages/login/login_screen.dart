import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cubit/cubit/auth_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final authCubit = context.read<AuthCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: authCubit.controllers['email'],
            decoration: const InputDecoration(
              hintText: "email",
            ),
          ),
          TextFormField(
            controller:authCubit.controllers['password'] ,
            decoration: const InputDecoration(
              hintText: "password",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              authCubit.login();
            },
            child: const Text("Login"),
          )
        ],
      ),
    );
  }
}
