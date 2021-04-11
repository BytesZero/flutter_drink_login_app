import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_drink_login_app/theme/app_colors.dart';

import '../widgets/welcome_widgets.dart';
import 'login_page.dart';

// 欢迎页面
class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBgColor,
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            WelcomeHeaderWidget(),
            Expanded(
              child: WelcomeFooterWidget(),
            ),
          ],
        ),
      ),
    );
  }
}

/// 欢迎页面底部内容
class WelcomeFooterWidget extends StatelessWidget {
  const WelcomeFooterWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientBtnWidget(
          width: 208,
          child: BtnTextWhiteWidget(text: 'Sign up'),
          onTap: () {},
        ),
        SizedBox(height: 16),
        GestureDetector(
          child: LoginBtnWidget(),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return LoginPage();
                },
              ),
            );
          },
        ),
        SizedBox(height: 16),
        Text(
          'Forgot password?',
          style: TextStyle(
            fontSize: 18,
            color: kTextColor,
          ),
        ),
        SizedBox(height: 54),
        Row(
          children: [
            Spacer(),
            LineWidget(),
            LoginTypeIconWidget(icon: 'assets/icons/logo_ins.png'),
            LoginTypeIconWidget(icon: 'assets/icons/logo_fb.png'),
            LoginTypeIconWidget(icon: 'assets/icons/logo_twitter.png'),
            LineWidget(),
            Spacer(),
          ],
        )
      ],
    );
  }
}
