import 'package:bonfire/bonfire.dart';
import 'package:pac_man/interface.dart';
import 'package:pac_man/objectives_sprites.dart';
import 'package:pac_man/player.dart';

class Objetivos extends GameDecoration with Sensor {
  bool coletado = false;
  var pontos = 0;
  Objetivos(Vector2 position)
      : super.withSprite(
          sprite: ObjetivosAnimacao.ponto,
          position: position,
          size: Vector2(16, 16),
        );

  @override
  void onContact(GameComponent component) {
    if (component is Jogador) {
      InterfaceJogo.pontos = InterfaceJogo.pontos + 10;
      removeFromParent();
      //print(InterfaceJogo.pontos);
      //gameRef.add(InterfaceJogo.pontos)
    }
  }

  @override
  void setupSensorArea(
      {List<CollisionArea>? areaSensor, int intervalCheck = 30}) {
    super.setupSensorArea();
  }
}

class Poder extends GameDecoration {
  Poder(Vector2 position)
      : super.withSprite(
          sprite: PoderesAnimacao.poder,
          position: position,
          size: Vector2(14, 14),
        );
}
