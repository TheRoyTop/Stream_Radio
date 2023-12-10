// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:radio_player/radio_player.dart';

class AudioPlayers extends StatefulWidget {
  const AudioPlayers({super.key});

  @override
  State<AudioPlayers> createState() => _AudioPlayersState();
}

class _AudioPlayersState extends State<AudioPlayers> {
  //Se Agrego variable Final Eliminar si hay Problema
  final RadioPlayer _radioPlayer = RadioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    initRadioPlayer();
  }

  void initRadioPlayer() {
    _radioPlayer.setChannel(
      title: 'Reproductor de radio',
      url: 'https://rr5100.globalhost1.com:7257/stream',
     
    );

    _radioPlayer.stateStream.listen((value) {
      setState(() {
        isPlaying = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //Remplasar tipo de return SizeBox por Container si da Problema
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Center(
        child: IconButton(alignment: Alignment.center,
  iconSize: 100,
  icon: SizedBox(
    child: Icon(isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded),
  ),
  onPressed: () {
    isPlaying ? _radioPlayer.pause() : _radioPlayer.play();
  },
)
,
      ),
    );
  }
}
