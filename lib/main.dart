import 'package:flutter/material.dart';
import 'package:flutter_gawboy_media/item_repo.dart';
import 'package:just_audio/just_audio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late AudioPlayer player;
  itemRepository myImages = itemRepository();

  @override
  void initState() {
    player = AudioPlayer();
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void playAudioFile(int index) {
    player.setAsset( myImages.getAuthorAudio(index) );
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: PageView.builder(
          itemCount: myImages.getLength(),
          itemBuilder: (context, index ) {
            playAudioFile(index);
            return Image.asset(myImages.getImageFile(index), fit: BoxFit.cover, );
          }
      )

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
