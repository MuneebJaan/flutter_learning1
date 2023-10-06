import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent.shade400,
        title: Text('App Bar'),
      ),
      body: const Center(
          child: Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/4074152/pexels-photo-4074152.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'))),
    ),
  ));
}
