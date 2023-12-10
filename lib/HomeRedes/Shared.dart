// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Shared extends StatefulWidget {
  const Shared({super.key});
  

  @override
  State<Shared> createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  
  
  @override
  Widget build(BuildContext context) {
    return IconButton(iconSize: 40, icon: const Icon(Icons.share_rounded),
     onPressed: () { 
      Share.share("https://www.google.com",subject: "Look What I Made");
     },);
  }

  
}

