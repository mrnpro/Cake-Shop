import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/Utils/validation.dart';
import '../../../core/common/text_form_field.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/colors.dart';
import '../../HomeScreen/home_screen.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 20),
          MyTextFormField(
              validator: (val) {
                if (!EmailValidator.isValid(val ?? "")) {
                  return "incorrect email format";
                }
                return null;
              },
              svgIcon: SvgPicture.asset(Assets.assetsVectorsMessage),
              keyboardType: TextInputType.emailAddress,
              hintText: 'Email'),
          const SizedBox(
            height: 10,
          ),
          MyTextFormField(
              validator: (val) {
                if (!PasswordValidator.isValid(val ?? "")) {
                  return "incorrect password format";
                }
                return null;
              },
              svgIcon: SvgPicture.asset(Assets.assetsVectorsLock),
              obscureText: true,
              hintText: 'password'),
          TextButton(
              style: TextButton.styleFrom(foregroundColor: Colors.white),
              onPressed: () {},
              child: const Text("Forgot password")),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.kOrange,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
