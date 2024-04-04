import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

final player = AudioPlayer();

class GambarPage extends StatefulWidget {
  const GambarPage({super.key});

  @override
  State<GambarPage> createState() => _GambarPageState();
}

class _GambarPageState extends State<GambarPage> {
  final player = AudioPlayer();
  String? namaHewan;

  gantiNama(String nama) {
    setState(() {
      namaHewan = nama;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaHewan ?? 'Gambar'),
        backgroundColor: Colors.amber,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () async {
              gantiNama("Kucing");
              await player.setAsset("aset_media/suara/cat.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset('aset_media/gambar/kucing.png'),
            ),
          ),
          GestureDetector(
            onTap: () async {
              gantiNama("Sapi");
              await player.setAsset("aset_media/suara/cow.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset('aset_media/gambar/sapi.png'),
            ),
          ),
          GestureDetector(
            onTap: () async {
              gantiNama("Bebek");
              await player.setAsset("aset_media/suara/duck.mp3");
              await player.play();
            },
            child: Card(
              child: Image.asset('aset_media/gambar/bebek.png'),
            ),
          ),
        ],
      ),
    );
  }
}
