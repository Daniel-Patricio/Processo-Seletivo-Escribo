import 'package:bonfire/bonfire.dart';

class AnimacaoInimigoVermelho {
  static get andaDireita => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(456, 64),
        ),
      );
  static get paradoDireita => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(456, 64),
          loop: false,
        ),
      );
  static get andaEsquerda => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(488, 64),
        ),
      );
  static get paradoEsquerda => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(488, 64),
          loop: false,
        ),
      );
  static get andaCima => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(520, 64),
        ),
      );
  static get paradoCima => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(520, 64),
          loop: false,
        ),
      );
  static get andaBaixo => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(552, 64),
        ),
      );
  static get paradoBaixo => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(552, 64),
          loop: false,
        ),
      );
  static get recebeDano => SpriteAnimation.load(
        'sprites_pac_man_png.png',
        SpriteAnimationData.sequenced(
          amount: 2,
          stepTime: 0.3,
          textureSize: Vector2(16, 16),
          texturePosition: Vector2(552, 64),
          loop: false,
        ),
      );
}
