import 'package:bonfire/base/bonfire_game.dart';
import 'package:bonfire/bonfire.dart';
import 'dart:async' as async;
import 'package:flutter/material.dart';
import 'objectives.dart';

class InterfaceJogo extends StatefulWidget {
  static const overlay = 'playerInterface';
  static var pontos = 0;
  final BonfireGame jogo;
  const InterfaceJogo({Key? key, required this.jogo}) : super(key: key);

  @override
  State<InterfaceJogo> createState() => _InterfaceJogoState();
}

class _InterfaceJogoState extends State<InterfaceJogo> {
  var pontos = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.red,
      child: Center(
        child: Text(
          '$pontos',
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
