import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_drink_login_app/theme/app_style.dart';
import 'package:flutter_drink_login_app/widgets/welcome_widgets.dart';

// 登录页面剪裁曲线
class LoginCliper extends CustomClipper<Path> {
  // 第一个点
  Point p1 = Point(0.0, 54.0);
  Point c1 = Point(20.0, 25.0);
  Point c2 = Point(81.0, -8.0);
  // 第二个点
  Point p2 = Point(160.0, 20.0);
  Point c3 = Point(216.0, 38.0);
  Point c4 = Point(280.0, 73.0);
  // 第三个点
  Point p3 = Point(280.0, 44.0);
  Point c5 = Point(280.0, -11.0);
  Point c6 = Point(330.0, 8.0);

  @override
  Path getClip(Size size) {
    // 第四个点
    Point p4 = Point(size.width, .0);

    Path path = Path();
    // 移动到起始点
    path.moveTo(p1.x, p1.y);
    // 第 1 段三阶贝塞尔曲线
    path.cubicTo(c1.x, c1.y, c2.x, c2.y, p2.x, p2.y);
    // 第 2 段三阶贝塞尔曲线
    path.cubicTo(c3.x, c3.y, c4.x, c4.y, p3.x, p3.y);
    // 第 3 段三阶贝塞尔曲线
    path.cubicTo(c5.x, c5.y, c6.x, c6.y, p4.x, p4.y);
    // 右下角
    path.lineTo(size.width, size.height);
    // 左下角
    path.lineTo(0, size.height);
    // 闭合
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper.hashCode != this.hashCode;
  }
}

/// 登录图标按钮
class LoginBtnIconWidget extends StatelessWidget {
  const LoginBtnIconWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        GradientBtnWidget(
          child: Row(
            children: [
              SizedBox(width: 34),
              BtnTextWhiteWidget(text: 'Login'),
              Spacer(),
              Image.asset(
                'assets/icons/icon_arrow_right.png',
                width: 24,
                height: 24,
              ),
              SizedBox(width: 24),
            ],
          ),
          width: 160,
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}

/// 登录输入框
class LoginInput extends StatelessWidget {
  const LoginInput({
    Key key,
    this.hintText,
    this.prefixIcon,
  }) : super(key: key);

  final String hintText;
  final String prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: kInputBorder,
        focusedBorder: kInputBorder,
        enabledBorder: kInputBorder,
        prefixIcon: Container(
          width: 56,
          height: 56,
          alignment: Alignment.center,
          child: Image.asset(
            prefixIcon,
            width: 24,
            height: 24,
          ),
        ),
      ),
      style: kBodyTextStyle.copyWith(
        fontSize: 18,
      ),
    );
  }
}

// 返回按钮
class BackIcon extends StatelessWidget {
  const BackIcon({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 56,
        height: 56,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/icons/icon_back.png',
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
