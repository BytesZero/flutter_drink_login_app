import 'package:flutter/material.dart';
import 'package:flutter_drink_login_app/theme/app_colors.dart';
import 'package:flutter_drink_login_app/theme/app_size.dart';
import 'package:flutter_drink_login_app/theme/app_style.dart';

// 登录方式图标
class LoginTypeIconWidget extends StatelessWidget {
  const LoginTypeIconWidget({
    Key key,
    this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Image.asset(
        icon,
        width: 16,
        height: 16,
      ),
    );
  }
}

// 横线
class LineWidget extends StatelessWidget {
  const LineWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Divider(color: kTextColor),
      width: 80,
    );
  }
}

// 登录按钮
class LoginBtnWidget extends StatelessWidget {
  const LoginBtnWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 208,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kBtnRadius),
        boxShadow: kBtnShadow,
      ),
      alignment: Alignment.center,
      child: Text(
        'Login',
        style: kBtnTextStyle,
      ),
    );
  }
}

// 渐变按钮
class GradientBtnWidget extends StatelessWidget {
  const GradientBtnWidget({
    Key key,
    this.width,
    this.onTap,
    this.child,
  }) : super(key: key);
  final double width;
  final GestureTapCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            gradient: kBtnLinearGradient,
            boxShadow: kBtnShadow,
            borderRadius: BorderRadius.circular(kBtnRadius),
          ),
          alignment: Alignment.center,
          child: child,
        ),
      ),
    );
  }
}

/// 白色按钮文字
class BtnTextWhiteWidget extends StatelessWidget {
  const BtnTextWhiteWidget({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: kBtnTextStyle.copyWith(
        color: Colors.white,
      ),
    );
  }
}

/// 头部内容
class WelcomeHeaderWidget extends StatelessWidget {
  const WelcomeHeaderWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WelBgHeader(),
        Positioned(
          top: 194,
          left: 40,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppIconWidget(),
              SizedBox(height: 8),
              Text(
                'Sour',
                style: kTitleTextStyle,
              ),
              SizedBox(height: 8),
              Text(
                'Best drink\nreceipes',
                style: kBodyTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/// App 图标
class AppIconWidget extends StatelessWidget {
  const AppIconWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Image.asset(
        'assets/icons/app_icon.png',
        width: 24,
        height: 32,
      ),
    );
  }
}

// 头部背景
class WelBgHeader extends StatelessWidget {
  const WelBgHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/bg_welcome_header.png',
      width: double.maxFinite,
    );
  }
}
