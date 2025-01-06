

import 'package:flutter/material.dart';
import 'package:simple_chat_app/auth/auth_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

void logOut() async{

  final AuthService authService = AuthService();

  authService.signOut();
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
        title: Text('Home'),
        actions: [
          IconButton(onPressed: logOut, icon: Icon(Icons.logout))
        ],
        centerTitle: true,
      ),
    );
  }
}