// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:stream0/Botton/AudioPlayers.dart';
import 'package:stream0/HomeRedes/Shared.dart';
import 'image.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent,
      elevation: 0,
        title: const Center(
          child: Text("Live Stream"),
           ),
       actions: [IconButton(
        icon: const Icon(Icons.more_vert),
        onPressed: () { },
           )
         ],
        ),
      drawer: const Drawer(),
      body: const Inicio()
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  
  @override
  Widget build(BuildContext context) {
    return Column( children: [
         const Padding(padding: EdgeInsets.only(top: 90),
         child: Logo(),
         ),
        const AudioPlayers(), 
        const Divider(),       
        SizedBox(
          height: 100,
          child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
               children: [ Padding(padding: const EdgeInsets.only(right: 10),
                 child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
            IconButton(
              iconSize: 40,
               icon: const Icon(Icons.facebook),
             onPressed: () {  },),
              const Text("Facebook")
           ]
          ),
        ),
          Padding(padding: const EdgeInsets.only(right: 10),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [IconButton(iconSize: 40, icon: const Icon(Icons.telegram), onPressed: () {  },),
              const Text("Telegram")
            ],
          ),
        ),
          const Column(mainAxisAlignment: MainAxisAlignment.center,
           children: [Shared(),
            Text("Shared"),
            ]
          ),
         ],
        )
       ),
      ],
    );
  }
}