import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/assets.dart';
import 'components/form.dart';
import 'components/welcome_text_like.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          _loginVector(size),
          const WelcomeTexts(),
          const LoginForm()
        ]),
      ),
    );
  }
}

_loginVector(Size size) {
  return Column(
    children: [
      const SizedBox(height: 30),
      SizedBox(
          height: size.height / 4,
          child: SvgPicture.asset(Assets.assetsVectorsCelebratingWomen)),
    ],
  );
}
