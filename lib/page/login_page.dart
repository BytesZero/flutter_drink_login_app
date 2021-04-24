import 'package:flutter/material.dart';
import 'package:flutter_drink_login_app/theme/app_style.dart';
import 'package:flutter_drink_login_app/widgets/login_widget.dart';
import '../extension/app_size_extension.dart';

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
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/bg_login_header.png',
              width: 375,
              height: 476,
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            children: [
              Spacer(),
              ClipPath(
                clipper: LoginClipper(),
                child: LoginBodyWidget(),
              ),
              SizedBox(height: MediaQuery.of(context).padding.bottom)
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
      padding: EdgeInsets.symmetric(horizontal: 32.spW()),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 86.spH()),
          Text(
            'Login',
            style: kTitleTextStyle,
          ),
          SizedBox(height: 20.spH()),
          Text(
            'Your Email',
            style: kBodyTextStyle,
          ),
          SizedBox(height: 4.spH()),
          LoginInput(
            hintText: 'Email',
            prefixIcon: 'assets/icons/icon_email.png',
          ),
          SizedBox(height: 16.spH()),
          Text(
            'Your Password',
            style: kBodyTextStyle,
          ),
          SizedBox(height: 4.spH()),
          LoginInput(
            hintText: 'Password',
            prefixIcon: 'assets/icons/icon_pwd.png',
            obscureText: true,
          ),
          SizedBox(height: 32.spH()),
          LoginBtnIconWidget(),
          SizedBox(height: 32.spH()),
        ],
      ),
    );
  }
}
