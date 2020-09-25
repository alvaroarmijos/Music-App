import 'package:flutter/material.dart';
import 'package:musicapp/src/models/audioplayer_model.dart';
import 'package:musicapp/src/pages/music_player_page.dart';
import 'package:musicapp/src/theme/theme.dart';
import 'package:provider/provider.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new AudioPlayerModel())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music App',
        theme: miTema,
        home: MusicPlayerPage()
      ),
    );
  }
}