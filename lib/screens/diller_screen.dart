import 'package:flutter/material.dart';

class DillerScreen extends StatelessWidget {
  const DillerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 200, 20, 7),
        title: Text(
          'Dil Seçenekleri',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // İngilizce
          InkWell(
            onTap: () {
              // İngilizce seçildiğinde yapılacak işlemler
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(width: 16),
                  Text('İngilizce'),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          // Almanca
          InkWell(
            onTap: () {
              // Almanca seçildiğinde yapılacak işlemler
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(width: 16),
                  Text('Almanca'),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          // İspanyolca
          InkWell(
            onTap: () {
              // İspanyolca seçildiğinde yapılacak işlemler
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(width: 16),
                  Text('İspanyolca'),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          // Türkçe
          InkWell(
            onTap: () {
              // Türkçe seçildiğinde yapılacak işlemler
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(width: 16),
                  Text('Türkçe'),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          // Fransızca
          InkWell(
            onTap: () {
              // Fransızca seçildiğinde yapılacak işlemler
            },
            child: Container(
              padding: EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(Icons.language),
                  SizedBox(width: 16),
                  Text('Fransızca'),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
