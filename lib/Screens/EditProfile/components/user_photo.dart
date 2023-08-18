import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/assets.dart';
import '../../../core/constants/colors.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
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
          Positioned(
            bottom: 0,
            right: 4,
            child: CircleAvatar(
                backgroundColor: MyColors.kOrange,
                child: SvgPicture.asset(Assets.assetsVectorsEdit)),
          ),
        ],
      ),
    );
  }
}
