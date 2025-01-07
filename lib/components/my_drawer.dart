import 'package:flutter/material.dart';
import 'package:simple_chat_app/services/auth/auth_service.dart';
import 'package:simple_chat_app/pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});


void logOut() async{

  final AuthService authService = AuthService();

  authService.signOut();
}

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                child: DrawerHeader(
                  decoration: BoxDecoration(),
                  child: Icon(
                    Icons.message,
                    color: Theme.of(context).colorScheme.primary,
                    size: 80,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  title: const Text('H O M E'),
                  leading: const Icon(Icons.home),
                  onTap: () => Navigator.pop(context),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: ListTile(
                  onTap: () {
                    Navigator.pop(context);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                  },
                  title: Text('S E T T I N G S'),
                  leading: Icon(Icons.settings),
                ),
              ),
            ],
          ),
           Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 20),
            child: ListTile(
              onTap: () => logOut(),
              title: const Text('L O G O U T'),
              leading: const Icon(Icons.logout),
            ),
          ),
        ],
      ),
    );
  }
}

