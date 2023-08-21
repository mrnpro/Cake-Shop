import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/common/text_form_field.dart';
import '../../../core/constants/assets.dart';

class EditProfileForm extends StatelessWidget {
  const EditProfileForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(children: [
        const SizedBox(height: 10),
        MyTextFormField(
            validator: (val) {
              return null;
            },
            svgIcon: SvgPicture.asset(Assets.assetsVectorsUser),
            hintText: 'Username'),
        const SizedBox(height: 10),
        MyTextFormField(
            validator: (val) {
              return null;
            },
            svgIcon: SvgPicture.asset(Assets.assetsVectorsUser),
            hintText: 'Phone'),
        const SizedBox(height: 10),
        MyTextFormField(
            validator: (val) {
              return null;
            },
            svgIcon: SvgPicture.asset(Assets.assetsVectorsMessage),
            hintText: 'Email'),
        const SizedBox(height: 10),
        MyTextFormField(
            validator: (val) {
              return null;
            },
            svgIcon: SvgPicture.asset(Assets.assetsVectorsLock),
            hintText: 'Password'),
        const SizedBox(height: 20),
        SizedBox(
            height: 50, child: SvgPicture.asset(Assets.assetsVectorsSubmit))
      ]),
    );
  }
}
