import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xylophone/component/app_styles.dart';
import 'package:flutter_xylophone/component/bottom_container.dart';

class MyHomePages extends StatefulWidget {
  const MyHomePages({super.key});

  @override
  State<MyHomePages> createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Column _buildBody() {
    return Column(
      children: [
        ButtonContainer(
          color: AppStyles.pianoColor1,
          onTap: () {
            player.play(AssetSource('do.wav'));
          },
        ),
        ButtonContainer(
          color: AppStyles.pianoColor2,
          onTap: () {
            player.play(AssetSource('re.wav'));
          },
        ),
        ButtonContainer(
          color: AppStyles.pianoColor3,
          onTap: () {
            player.play(AssetSource('mi.wav'));
          },
        ),
        ButtonContainer(
          color: AppStyles.pianoColor4,
          onTap: () {
            player.play(AssetSource('fa.wav'));
          },
        ),
        ButtonContainer(
          color: AppStyles.pianoColor5,
          onTap: () {
            player.play(AssetSource('so.wav'));
          },
        ),
        ButtonContainer(
          color: AppStyles.pianoColor6,
          onTap: () {
            player.play(AssetSource('la.wav'));
          },
        ),
        ButtonContainer(
          color: AppStyles.pianoColor7,
          onTap: () {
            player.play(AssetSource('si.wav'));
          },
        ),
      ],
    );
  }

  _buildAppBar() {
    return AppBar(
      backgroundColor: AppStyles.appBarColor,
      centerTitle: true,
      title: const Text(
        'XyloPhone',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
