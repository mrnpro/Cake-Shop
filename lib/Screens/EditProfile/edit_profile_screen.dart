import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/common/text_form_field.dart';
import '../../core/constants/assets.dart';
import '../../core/constants/colors.dart';
import 'components/form.dart';
import 'components/user_photo.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [UserPhoto(), EditProfileForm()],
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(100.0), // here the desired height
        child: AppBar(
          centerTitle: true,
          title: const Text("Edit Profile"),
        ));
  }
}
