import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/constants.dart';
import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 200, 20, 7),
        title: Text(
          "Profil",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    child: Text(
                      "DD",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Dilara Dertli"),
                    subtitle: Text("Ad Soyad"),
                  ),
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("dertlidilara@gmail.com"),
                    subtitle: Text("E-posta"),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {},
            icon: Icon(Icons.logout),
            label: Text("Hesaptan Çıkış Yap"),
            style: FilledButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          if (context.canPop())
            TextButton.icon(
              onPressed: () => context.pop(),
              icon: Icon(Icons.arrow_back),
              label: Text("Geri Dön"),
              style: TextButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
              ),
            ),
        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}
