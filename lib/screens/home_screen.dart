import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeProvider>().isDark;

    final currentColors = isDarkMode ? darkColors : colors;

    return Scaffold(
      backgroundColor: currentColors["surface"],
      appBar: AppBar(
        backgroundColor: currentColors["primary"],
        title: const Text(
          'RedRoute',
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.map),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: currentColors["surface"],
        elevation: 0,
        child: Column(
          children: [
            const SizedBox(
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.person_circle,
                    size: 80,
                    color: Colors.black87,
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.search),
              title: const Text('History'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.person),
              title: const Text('Profile'),
              onTap: () {
                context.go("/profile");
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Settings'),
              onTap: () {
                context.go("/settings");
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                _buildCategoryItem(
                  image: 'assets/images/Otel1.jpg',
                  title: 'Butik Oteller',
                  currentColors: currentColors,
                ),
                _buildCategoryItem(
                  image: 'assets/images/Otel2.jpg',
                  title: 'Bungalovlar',
                  currentColors: currentColors,
                ),
                _buildCategoryItem(
                  image: 'assets/images/Otel3.jpg',
                  title: 'Konteyner Evler',
                  currentColors: currentColors,
                ),
                _buildCategoryItem(
                  image: 'assets/images/Otel4.jpg',
                  title: 'Ağaç Evler',
                  currentColors: currentColors,
                ),
                _buildCategoryItem(
                  image: 'assets/images/Otel5.jpg',
                  title: 'Oteller',
                  currentColors: currentColors,
                ),
                _buildCategoryItem(
                  image: 'assets/images/Otel6.jpg',
                  title: 'Karavanlar',
                  currentColors: currentColors,
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }

  Widget _buildCategoryItem({
    required String image,
    required String title,
    required Map<String, Color> currentColors,
  }) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        border: Border.all(color: currentColors["onSurface"]!, width: 2),
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(
            title,
            style: TextStyle(
              color: currentColors["onSurface"]!,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
