import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_drink_login_app/theme/app_style.dart';
import 'package:flutter_drink_login_app/widgets/login_widgets.dart';

// 登录页面
class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          Image.asset(
            'assets/images/bg_login_header.png',
            width: double.maxFinite,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 360),
                ClipPath(
                  clipper: LoginCliper(),
                  child: Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(height: 86),
                        Text(
                          'Login',
                          style: kTitleTextStyle,
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Your Email',
                          style: kSubTitleTextStyle,
                        ),
                        SizedBox(height: 4),
                        LoginInput(
                          hintText: 'Email',
                          prefixIcon: 'assets/icons/icon_email.png',
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Your Password',
                          style: kSubTitleTextStyle,
                        ),
                        SizedBox(height: 4),
                        LoginInput(
                          hintText: 'Password',
                          prefixIcon: 'assets/icons/icon_pwd.png',
                        ),
                        SizedBox(height: 32),
                        LoginBtnIconWidget(),
                        SizedBox(height: MediaQuery.of(context).padding.bottom),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 64,
            left: 28,
            child: BackIcon(),
          ),
        ],
      ),
    );
  }
}

// 登录页面剪裁曲线
class LoginCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // 第一个点
    Point point1 = Point(0.0, 54.0);
    Point contr1 = Point(20.0, 25.0);
    Point contr2 = Point(81.0, -8.0);
    // 第二个点
    Point point2 = Point(160.0, 20.0);
    Point contr3 = Point(216.0, 38.0);
    Point contr4 = Point(280.0, 73.0);
    // 第三个点
    Point point3 = Point(280.0, 44.0);
    Point contr5 = Point(280.0, -11.0);
    Point contr6 = Point(330.0, 8.0);
    // 第四个点
    Point point4 = Point(size.width, .0);

    Path path = Path();
    // 移动到起始点
    path.moveTo(point1.x, point1.y);
    // 第1段三阶贝塞尔曲线
    path.cubicTo(contr1.x, contr1.y, contr2.x, contr2.y, point2.x, point2.y);
    // 第2段三阶贝塞尔曲线
    path.cubicTo(contr3.x, contr3.y, contr4.x, contr4.y, point3.x, point3.y);
    // 第3段三阶贝塞尔曲线
    path.cubicTo(contr5.x, contr5.y, contr6.x, contr6.y, point4.x, point4.y);
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
      style: kSubTitleTextStyle.copyWith(
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
