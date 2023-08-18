import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/assets.dart';

class DashboardIconAccountSection extends StatelessWidget {
  const DashboardIconAccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 50,
                width: 50,
                child: SvgPicture.asset(Assets.assetsVectorsDashboardIcon)),
            Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.grey),
                    image: const DecorationImage(
                        image: AssetImage(Assets.assetsImagesProfileAvatar)))),
          ],
        ),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }
}
