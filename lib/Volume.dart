// ignore_for_file: file_names

/* 
import 'package:volume_regulator/volume_regulator.dart';
import 'package:flutter/material.dart';

class Volumen extends StatefulWidget {
  const Volumen({super.key});

  @override
  State<Volumen> createState() => _VolumenState();
}

class _VolumenState extends State<Volumen> {
  double _volume = 0;
  
  
  void InicioState(){
    super.initState();

    VolumeRegulator.getVolume().then((value){
      setState(() {
        _volume = value.toDouble();
      });
    });

    VolumeRegulator.volumeStream.listen((value){
      setState(() {
        _volume = value.toDouble();
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Container(
          height: 20,
          width: 300,
          child: Column(children: <Widget>[
            Text('Volume: ${_volume.round()}%',),
            Slider(value: _volume, 
          min: 0,
          max: 100,
          divisions: 100,
          label: _volume.round().toString(),
           onChanged: (double value) { 
            VolumeRegulator.setVolume(value.toInt());
          },

          )
          ],),
        );
  }
}
*/