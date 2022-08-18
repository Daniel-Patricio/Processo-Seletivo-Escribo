import 'package:bonfire/bonfire.dart';
import 'package:flutter/material.dart';
import 'package:pac_man/enemy.dart';
import 'package:pac_man/player.dart';

import 'interface.dart';
import 'objectives.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Jogo(),
    );
  }
}

class Jogo extends StatelessWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      cameraConfig: CameraConfig(moveOnlyMapArea: true),
      components: [
        Inimigo(Vector2(13 * 13, 18 * 13)),
      ],
      joystick: Joystick(
        directional: JoystickDirectional(),
        keyboardConfig: KeyboardConfig(),
      ),
      map: TiledWorldMap('mapa.json',
          forceTileSize: const Size(13, 13),
          objectsBuilder: {
            'enemy': (properties) => Inimigo(properties.position),
            'objective': (properties) => Objetivos(properties.position),
            'power': (properties) => Poder(properties.position),
          }),
      player: Jogador(
        Vector2(14 * 13, 34 * 13),
      ),
      overlayBuilderMap: {
        InterfaceJogo.overlay: (context, game) => InterfaceJogo(
              jogo: game,
            )
      },
      initialActiveOverlays: const [
        InterfaceJogo.overlay,
      ],
      showCollisionArea: false,
    );
  }
}
