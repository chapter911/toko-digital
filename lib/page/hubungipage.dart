import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';

class HubungiPage extends StatefulWidget {
  const HubungiPage({Key? key}) : super(key: key);

  @override
  State<HubungiPage> createState() => _HubungiPageState();
}

class _HubungiPageState extends State<HubungiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Pesan",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 9,
              child: Column(
                children: [
                  Bubble(
                    style: const BubbleStyle(
                      nip: BubbleNip.rightTop,
                      color: Colors.blue,
                      margin: BubbleEdges.only(top: 8.0, left: 50.0),
                      alignment: Alignment.topRight,
                    ),
                    child: const Text("Halo Selamat Datang Di TokoKami"),
                  ),
                  Bubble(
                    style: const BubbleStyle(
                      nip: BubbleNip.leftTop,
                      color: Colors.green,
                      margin: BubbleEdges.only(top: 8.0),
                      alignment: Alignment.topLeft,
                    ),
                    child: const Text("Selamat Siang..."),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Row(
                children: const [
                  Flexible(flex: 1, child: Icon(Icons.emoji_emotions)),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(flex: 8, child: TextField()),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(flex: 1, child: Icon(Icons.file_copy)),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(flex: 1, child: Icon(Icons.camera_alt)),
                  SizedBox(
                    width: 5,
                  ),
                  Flexible(flex: 1, child: Icon(Icons.mic_rounded)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
