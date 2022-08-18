import 'package:bonfire/bonfire.dart';
import 'package:pac_man/player_moves.dart';

class Jogador extends SimplePlayer with ObjectCollision {
  bool podeMover = true;
  Jogador(Vector2 position)
      : super(
          position: position,
          size: Vector2(16, 16),
          life: 1,
          speed: 100,
          animation: SimpleDirectionAnimation(
            runRight: AnimacaoMovimento.andaDireita,
            idleRight: AnimacaoMovimento.paradoDireita,
            runLeft: AnimacaoMovimento.andaEsquerda,
            idleLeft: AnimacaoMovimento.paradoEsquerda,
            runDown: AnimacaoMovimento.andaBaixo,
            idleDown: AnimacaoMovimento.paradoBaixo,
            runUp: AnimacaoMovimento.andaCima,
            idleUp: AnimacaoMovimento.paradoCima,
            enabledFlipY: true,
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
  set priority(int newPriority) {
    aboveComponents = true;
    super.priority = newPriority;
  }

  @override
  void joystickChangeDirectional(JoystickDirectionalEvent event) {
    if (podeMover) {
      super.joystickChangeDirectional(event);
    }
  }
  /*@override
  bool onCollision(GameComponent component, bool active) {
    if (component is Inimigo) {
      simpleAttackMelee(
        damage: 20,
        size: Vector2(1, 1),
      );
    }
    return super.onCollision(component, active);
  }*/

  @override
  void receiveDamage(AttackFromEnum attacker, double damage, identify) {
    podeMover = false;
    super.receiveDamage(attacker, damage, identify);
  }

  @override
  void die() {
    animation?.playOnce(AnimacaoMovimento.morre, runToTheEnd: true,
        onFinish: () {
      removeFromParent();
    });
    super.die();
    podeMover = true;
  }
}
