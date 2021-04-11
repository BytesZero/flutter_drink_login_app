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
                Container(
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
