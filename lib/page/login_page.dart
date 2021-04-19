import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_drink_login_app/theme/app_colors.dart';
import 'package:flutter_drink_login_app/theme/app_size.dart';
import 'package:flutter_drink_login_app/theme/app_style.dart';
import 'package:flutter_drink_login_app/widgets/login_widget.dart';
import 'package:flutter_drink_login_app/widgets/welcome_widget.dart';

/// 登录页面
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
          Image.asset('assets/images/bg_login_header.png'),
          Column(
            children: [
              SizedBox(height: 320),
              ClipPath(
                clipper: LoginClipper(),
                child: LoginBodyWidget(),
              ),
            ],
          ),
          Positioned(
            top: 64,
            left: 28,
            child: BackIcon(),
          )
        ],
      ),
    );
  }
}

/// 登录页面内容体
class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.maxFinite,
      padding: EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 86),
          Text(
            'Login',
            style: kTitleTextStyle,
          ),
          SizedBox(height: 20),
          Text(
            'Your Email',
            style: kBodyTextStyle,
          ),
          SizedBox(height: 4),
          LoginInput(
            hintText: 'Email',
            prefixIcon: 'assets/icons/icon_email.png',
          ),
          SizedBox(height: 16),
          Text(
            'Your Password',
            style: kBodyTextStyle,
          ),
          SizedBox(height: 4),
          LoginInput(
            hintText: 'Password',
            prefixIcon: 'assets/icons/icon_pwd.png',
            obscureText: true,
          ),
          SizedBox(height: 32),
          LoginBtnIconWidget(),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
