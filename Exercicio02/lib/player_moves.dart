import 'package:bonfire/bonfire.dart';

class AnimacaoMovimento {
  static get andaDireita => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(455.5, 0),
        ),
      );
  static get paradoDireita => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(455.5, 0),
          loop: false,
        ),
      );
  static get andaEsquerda => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(455.5, 16),
        ),
      );
  static get paradoEsquerda => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(455.5, 16),
          loop: false,
        ),
      );
  static get andaCima => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(455.5, 32),
        ),
      );
  static get paradoCima => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(455.5, 32),
          loop: false,
        ),
      );
  static get andaBaixo => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(455.5, 48),
        ),
      );
  static get paradoBaixo => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 3,
          stepTime: 0.1,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(455.5, 48),
          loop: false,
        ),
      );
  static get morre => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 12,
          stepTime: 0.125,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(488, 0),
        ),
      );
}
