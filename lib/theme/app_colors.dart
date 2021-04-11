import 'dart:ui';

import 'package:flutter/widgets.dart';

// 背景颜色
const Color kBgColor = Color(0xFFFEDCE0);
// 文字颜色
const Color kTextColor = Color(0xFF3D0007);
// 按钮开始颜色
const Color kBtnColorStart = Color(0xFFF89500);
// 按钮结束颜色
const Color kBtnColorEnd = Color(0xFFFA6B74);
// 按钮投影颜色
const Color kBtnShadowColor = Color(0x33D83131);

// 按钮渐变背景色
const LinearGradient kBtnLinearGradient = LinearGradient(
  colors: [
    kBtnColorStart,
    kBtnColorEnd,
  ],
);



