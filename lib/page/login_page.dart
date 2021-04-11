import 'package:flutter/material.dart';
import 'package:flutter_drink_login_app/theme/app_style.dart';
import 'package:flutter_drink_login_app/widgets/login_widget.dart';

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
            fit: BoxFit.fitWidth,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 360),
                ClipPath(
                  clipper: LoginCliper(),
                  child: LoginBodyWidget(),
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

// 登录页面内容体
class LoginBodyWidget extends StatelessWidget {
  const LoginBodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          ),
          SizedBox(height: 32),
          LoginBtnIconWidget(),
          SizedBox(height: 32),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
