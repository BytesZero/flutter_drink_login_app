// 按钮投影
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'app_colors.dart';
import 'app_size.dart';

// 按钮投影
const List<BoxShadow> kBtnShadow = [
  BoxShadow(
    color: kBtnShadowColor,
    offset: Offset(0, 8),
    blurRadius: 20,
  )
];

// 按钮文字样式
const TextStyle kBtnTextStyle = TextStyle(
  color: kBtnColorStart,
  fontSize: kBtnTextSize,
  fontWeight: kMediumFontWeight,
);

// 标题文字样式
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: kTitleTextSize,
  color: kTextColor,
  fontWeight: kMediumFontWeight,
);

// 内容文字样式
const TextStyle kBodyTextStyle = TextStyle(
  fontSize: kBodyTextSize,
  color: kTextColor,
  fontWeight: kLightFontWeight,
);

// 输入框边框
OutlineInputBorder kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5),
  borderSide: BorderSide(
    color: kInputBorderColor,
    width: 1,
  ),
);
