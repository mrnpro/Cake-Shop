import 'package:flutter/material.dart';

import '../../core/constants/assets.dart';
import '../Login/login_screen.dart';
import 'Components/account_menu.dart';

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
          Hero(
            tag: "profile picture",
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage(Assets.assetsImagesProfileAvatar)),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.grey),
              ),
            ),
          ),
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
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
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
