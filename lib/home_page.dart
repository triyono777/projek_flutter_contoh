// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'nilai_akhir_page.dart';
import 'gambar_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projek Contoh'),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => GambarPage(),
                ),
              );
            },
            title: Text('Gambar'),
            subtitle: Text('Tentang widget asset'),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => NilaiAkhirPage(),
                ),
              );
            },
            title: Text('Nilai Akhir'),
            subtitle: Text('Menghitung nilai akhir'),
          ),
        ],
      ),
    );
  }
}
