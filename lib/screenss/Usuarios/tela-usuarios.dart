

import 'package:flutter/material.dart';

class TelaUsuarios extends StatefulWidget {
  

  @override
  State<TelaUsuarios> createState() => _TelaUsuariosState();
}

class _TelaUsuariosState extends State<TelaUsuarios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Projeto Firebase Danki"),
        backgroundColor: Colors.purpleAccent
      ),
      
    );
  }
}