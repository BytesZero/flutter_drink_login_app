import 'package:flutter/material.dart';

/// App 基准大小配置
class AppSizeConfig {
  // 屏幕宽度
  static double width;
  // 屏幕高度
  static double height;
  // 设计稿宽度
  static double dWidth;
  // 设计稿高度
  static double dHeight;

  /// 初始化屏幕参数
  static void initScreen(BuildContext context,
      {double designWidth = 375, double designHeight = 812}) {
    Size screenSize = MediaQuery.of(context).size;
    width = screenSize.width;
    height = screenSize.height;
    dWidth = designWidth;
    dHeight = designHeight;
  }
}

/// App 大小扩展类
extension AppSizeExtension on num {
  /// 根据屏幕尺寸获取宽度比例
  double spW() {
    return (this.toDouble() / AppSizeConfig.dWidth) * AppSizeConfig.width;
  }

  /// 根据屏幕尺寸获取高度比例
  double spH() {
    return (this.toDouble() / AppSizeConfig.dHeight) * AppSizeConfig.height;
  }
}
