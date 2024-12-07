import 'package:flutter/material.dart';
import 'package:flutter_app/screens/diller_screen.dart';
import 'package:flutter_app/screens/guvenlik_screen.dart';
import 'package:flutter_app/screens/kisiselbilgiler_screen.dart';
import 'package:flutter_app/screens/odemeler_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 200, 20, 7),
        title: Text(
          'RedRoute',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontStyle: FontStyle.italic),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Kişisel Bilgiler sekmesi
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => KisiselbilgilerScreen()),
              );
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(width: 16),
                  Text('Kişisel Bilgiler'),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          // Diller sekmesi
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DillerScreen()),
              );
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(width: 16),
                  Text('Diller'),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          // Giriş Yapma ve Güvenlik sekmesi
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GuvenlikScreen()),
              );
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.lock),
                  SizedBox(width: 16),
                  Text('Giriş Yapma ve Güvenlik'),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          // Ödemeler sekmesi
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OdemelerScreen()),
              );
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.payment),
                  SizedBox(width: 16),
                  Text('Ödemeler'),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 16),
            child: Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  'Çıkış Yap',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 209, 30, 17),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
