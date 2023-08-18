import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../MockData/cake_data.dart';
import '../../../core/constants/assets.dart';
import '../../../core/constants/colors.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 40,
        width: size.width,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: cakeDatas.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Column(
                children: [
                  Text(cakeDatas[index].cakeCategory ?? "no category",
                      style: TextStyle(
                          color: MyColors.kOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                  CircleAvatar(
                    radius: 5,
                    backgroundColor: MyColors.kOrange,
                  )
                ],
              );
            }
            return Column(
              children: [
                Text("  ${cakeDatas[index].cakeCategory ?? "no category"}",
                    style: const TextStyle(
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            );
          },
        ));
  }
}

class CategorizedProducts extends StatelessWidget {
  const CategorizedProducts({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        CategoryList(size: size),
        const SizedBox(height: 20),
        SizedBox(
          height: 280,
          width: size.width,
          child: ListView.builder(
            itemCount: cakeDatas.length,
            itemBuilder: (context, index) =>
                _productItem(context, cakeDatas[index]),
            scrollDirection: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  _productItem(BuildContext context, CakeData cakeData) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(10),
      width: 200,
      height: 250,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: MyColors.kPrimaryColor,
              spreadRadius: 4,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
          color: MyColors.ksecondaryColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    cakeData.imagePath ?? Assets.assetsImagesCakeBlack1)),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(cakeData.cakeName ?? "cake name",
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(cakeData.cakeCategory ?? "cake category here "),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${cakeData.cakePrice ?? "price"} ETB",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        foregroundColor: Colors.white,
                        backgroundColor: MyColors.kOrange),
                    onPressed: () {},
                    child: const Icon(Icons.add))
              ],
            ),
          ],
        )
      ]),
    );
  }
}
