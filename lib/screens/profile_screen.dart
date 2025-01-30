import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../core/themes.dart';
import '../widgets/bottom_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.watch<ThemeProvider>().isDark;

    return Scaffold(
      backgroundColor: isDarkMode ? darkColors["surface"] : colors["surface"],
      appBar: AppBar(
        backgroundColor: isDarkMode ? darkColors["primary"] : colors["primary"],
        title: Text(
          "Profil",
          style: TextStyle(
              color: isDarkMode ? darkColors["onPrimary"] : colors["onPrimary"],
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.moon),
            onPressed: () {
              context.read<ThemeProvider>().toggleTheme();
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            color: isDarkMode ? darkColors["surface"] : colors["surface"],
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor:
                        isDarkMode ? darkColors["primary"] : colors["primary"],
                    child: Text(
                      "DD",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: isDarkMode
                              ? darkColors["onPrimary"]
                              : colors["onPrimary"]),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ListTile(
                    leading: Icon(Icons.person,
                        color: isDarkMode
                            ? darkColors["onSurface"]
                            : colors["onSurface"]),
                    title: Text("Dilara Dertli",
                        style: TextStyle(
                            color: isDarkMode
                                ? darkColors["onSurface"]
                                : colors["onSurface"])),
                    subtitle: Text("Ad Soyad",
                        style: TextStyle(
                            color: isDarkMode
                                ? darkColors["onSurface"]
                                : colors["onSurface"])),
                  ),
                  ListTile(
                    leading: Icon(Icons.email,
                        color: isDarkMode
                            ? darkColors["onSurface"]
                            : colors["onSurface"]),
                    title: Text("dertlidilara@gmail.com",
                        style: TextStyle(
                            color: isDarkMode
                                ? darkColors["onSurface"]
                                : colors["onSurface"])),
                    subtitle: Text("E-posta",
                        style: TextStyle(
                            color: isDarkMode
                                ? darkColors["onSurface"]
                                : colors["onSurface"])),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 24),
          FilledButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.logout),
            label: const Text("Hesaptan Çıkış Yap"),
            style: FilledButton.styleFrom(
              backgroundColor:
                  isDarkMode ? darkColors["primary"] : colors["primary"],
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          if (context.canPop())
            TextButton.icon(
              onPressed: () => context.pop(),
              icon: Icon(Icons.arrow_back,
                  color: isDarkMode
                      ? darkColors["onSurface"]
                      : colors["onSurface"]),
              label: Text("Geri Dön",
                  style: TextStyle(
                      color: isDarkMode
                          ? darkColors["onSurface"]
                          : colors["onSurface"])),
              style: TextButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
