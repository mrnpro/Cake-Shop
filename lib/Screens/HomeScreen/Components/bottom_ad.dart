import 'package:flutter/material.dart';

import '../../../core/constants/assets.dart';
import '../../../core/constants/colors.dart';

class BottomAD extends StatelessWidget {
  const BottomAD({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: size.width,
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),
          Container(
              padding: const EdgeInsets.all(10),
              height: 100,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: MyColors.ksecondaryColor),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: double.infinity,
                    width: size.width / 3.4,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(Assets.assetsImagesFreakshake)),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("chocolate milkshake ",
                          style: TextStyle(fontSize: 18)),
                      TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: MyColors.kPrimaryColor,
                            foregroundColor: Colors.white),
                        onPressed: () {},
                        child: const Text("Get Now 75%"),
                      )
                    ],
                  )
                ],
              ))
        ]));
  }
}
