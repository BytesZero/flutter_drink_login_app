// 按钮投影
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'app_colors.dart';

const List<BoxShadow> kBtnShadow = [
  BoxShadow(
    color: kBtnShadowColor,
    offset: Offset(0, 8),
    blurRadius: 20,
  )
];
// 按钮圆角半径
const Radius kBtnRadius = Radius.circular(24);
// 按钮文字样式
const TextStyle kBtnTextStyle = TextStyle(
  color: kBtnColorStart,
  fontSize: 18,
  fontWeight: FontWeight.w500,
);

// 标题文字样式
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 24,
  color: kTextColor,
  fontWeight: FontWeight.w500,
);

// 标题文字样式
const TextStyle kSubTitleTextStyle = TextStyle(
  fontSize: 14,
  color: kTextColor,
  fontWeight: FontWeight.w300,
);
// 输入框边框
OutlineInputBorder kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5),
  borderSide: BorderSide(
    color: Color(0xFFECECEC),
    width: 1,
  ),
);
