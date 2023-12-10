import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.only(left: 20,right: 20),
    child: SizedBox(

      height: 250,
      width: double.infinity,
      child:  Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const Center(
              child: Text("Live",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,)),
            )),
    ),);
  }
}