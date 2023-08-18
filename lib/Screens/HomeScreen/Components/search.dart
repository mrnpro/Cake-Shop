import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Container(
          height: 50,
          padding: const EdgeInsets.all(10),
          width: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: MyColors.ksecondaryColor),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.search),
                    Text("Find your Cake ..."),
                  ],
                ),
                Icon(Icons.filter_list_outlined)
              ]),
        ),
      ],
    );
  }
}
