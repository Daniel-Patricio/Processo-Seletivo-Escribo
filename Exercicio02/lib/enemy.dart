import 'package:bonfire/bonfire.dart';
import 'package:pac_man/player.dart';
import 'package:pac_man/red_moves.dart';

class Inimigo extends SimpleEnemy
    with ObjectCollision, AutomaticRandomMovement {
  bool podeMover = true;
  Inimigo(Vector2 position)
      : super(
          position: position,
          size: Vector2(13, 13),
          life: 1,
          speed: 50,
          animation: SimpleDirectionAnimation(
            runRight: AnimacaoInimigoVermelho.andaDireita,
            idleRight: AnimacaoInimigoVermelho.paradoDireita,
            runLeft: AnimacaoInimigoVermelho.andaEsquerda,
            idleLeft: AnimacaoInimigoVermelho.paradoEsquerda,
            runDown: AnimacaoInimigoVermelho.andaBaixo,
            idleDown: AnimacaoInimigoVermelho.paradoBaixo,
            runUp: AnimacaoInimigoVermelho.andaCima,
            idleUp: AnimacaoInimigoVermelho.paradoCima,
            eightDirection: false,
          ),
        ) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.circle(radius: 5, align: Vector2(1, 1)),
        ],
      ),
    );
  }
  @override
  void update(double dt) {
    if (podeMover) {
      runRandomMovement(
        dt,
        timeKeepStopped: 100,
        speed: 50,
        minDistance: 100,
        maxDistance: 1000,
      );
    }
    super.update(dt);
  }

  @override
  bool onCollision(GameComponent component, bool active) {
    if (component is Jogador) {
      simpleAttackMelee(
        damage: 20,
        size: Vector2(1, 1),
        interval: 1,
      );
    }
    return super.onCollision(component, active);
  }
/*
  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    //se estiver vulneravel a dano recebe dano e volta pro meio... usar podeMover
    animation?.playOnce(AnimacaoInimigoVermelho.recebeDano);
    //se não estiver vulneravel a dano nada acontece
    super.receiveDamage(attacker, damage, identify);
  }*/
}
