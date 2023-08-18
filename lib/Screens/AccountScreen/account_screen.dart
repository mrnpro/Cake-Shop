import 'package:flutter/material.dart';

import '../../core/constants/assets.dart';
import 'account_menu.dart';

class AccountMainScreen extends StatelessWidget {
  const AccountMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Hero(
              tag: "profile picture",
              child: CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage(Assets.assetsImagesProfileAvatar),
              )),
          const Text("Natnael Fikadu",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          AccountMenu(
            press: () {},
            text: "Edit Profile",
          ),
          AccountMenu(
            press: () {},
            text: "Delete Accont",
          ),
          AccountMenu(
            press: () {},
            text: "LogOut",
          )
        ],
      ),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(100.0), // here the desired height
        child: AppBar(
          centerTitle: true,
          title: const Text("Account Settings"),
        ));
  }
}
