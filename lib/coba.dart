// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NilaiAkhirPage extends StatefulWidget {
  const NilaiAkhirPage({super.key});

  @override
  State<NilaiAkhirPage> createState() => _NilaiAkhirPageState();
}

class _NilaiAkhirPageState extends State<NilaiAkhirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nilai Akhir'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Text("Nilai Akhir"),
          SizedBox(height: 30),
          TextFormField(),
          TextFormField(),
          TextFormField(),
          SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: Text('Hitung')),
          Text('nilai rata rata:'),
          Text('0'),
        ],
      ),
    );
  }
}
