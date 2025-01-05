import 'package:flutter/material.dart';
import 'package:simple_chat_app/components/my_button.dart';
import 'package:simple_chat_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void login(){

  }
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Welcome back, you\'ve been missed!',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          MyTextfield(
            hintText: 'Email',
            isObseureText: false,
            controller: _emailController,
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextfield(
            hintText: 'Password',
            isObseureText: true,
            controller: _passwordController,
          ),
          SizedBox(
            height: 20,
          ),
          MyButton(
            text: 'Login',
            onTap: login ,
          )
        ],
      ),
    );
  }
}
