import 'package:bonfire/bonfire.dart';

class ObjetivosAnimacao {
  static Future<Sprite> get ponto => Sprite.load(
        'sprites_pac_man_png.png',
        srcPosition: Vector2(8, 16),
        srcSize: Vector2(8, 8),
      );
  static Future<Sprite> get pontoColetado => Sprite.load(
        'sprites_pac_man_png.png',
        srcPosition: Vector2(8, 80),
        srcSize: Vector2(8, 8),
      );
}

class PoderesAnimacao {
  static Future<Sprite> get poder => Sprite.load(
        'sprites_pac_man_png.png',
        srcPosition: Vector2(8, 24),
        srcSize: Vector2(8, 8),
      );
  static Future<Sprite> get poderColetado => Sprite.load(
        'sprites_pac_man_png.png',
        srcPosition: Vector2(8, 80),
        srcSize: Vector2(8, 8),
      );
}
