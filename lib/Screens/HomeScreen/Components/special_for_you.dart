import 'package:flutter/material.dart';

import '../../../core/constants/assets.dart';
import '../../../core/constants/colors.dart';

class SpecialForYou extends StatelessWidget {
  const SpecialForYou({
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
          // const Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text("Special for you ",
          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          // ),
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
                    width: size.width / 3,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                Assets.assetsImagesHotChocolateSauce)),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.red),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Get Special Discount ",
                          style: TextStyle(
                              // fontWeight: FontWeight.bold,
                              fontSize: 18)),
                      Text("Up to 50% ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  )
                ],
              ))
        ]));
  }
}
