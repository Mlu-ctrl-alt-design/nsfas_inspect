import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray5001 = fromHex('#fafafa');

  static Color gray50 = fromHex('#f8fafc');

  static Color black900 = fromHex('#000000');

  static Color yellow800 = fromHex('#f3981e');

  static Color yellow900 = fromHex('#d36e28');

  static Color blueGray800 = fromHex('#334155');

  static Color blueGray700 = fromHex('#475569');

  static Color blueGray90001 = fromHex('#323130');

  static Color blueGray900 = fromHex('#1e293b');

  static Color yellow100 = fromHex('#fef3c7');

  static Color gray90002 = fromHex('#201f1e');

  static Color gray700 = fromHex('#686868');

  static Color blueGray100 = fromHex('#cbd5e1');

  static Color blueGray400 = fromHex('#8181a5');

  static Color blueGray300 = fromHex('#94a3b8');

  static Color indigo50 = fromHex('#e2e8f0');

  static Color gray900 = fromHex('#1a1a1a');

  static Color gray90001 = fromHex('#0f172a');

  static Color blueGray500 = fromHex('#64748b');

  static Color orange600 = fromHex('#f88a0b');

  static Color black9000c = fromHex('#0c000000');

  static Color orange400 = fromHex('#f99b2e');

  static Color orange200 = fromHex('#fbbc73');

  static Color gray100 = fromHex('#f1f5f9');

  static Color tealA400 = fromHex('#2dd4bf');

  static Color blue100 = fromHex('#c7e0f4');

  static Color black90019 = fromHex('#19000000');

  static Color blueGray40001 = fromHex('#888888');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
