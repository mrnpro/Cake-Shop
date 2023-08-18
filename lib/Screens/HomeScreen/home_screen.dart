import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../MockData/cake_data.dart';
import '../../core/constants/assets.dart';
import '../../core/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _body(context));
  }

  Widget _body(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          children: [
            // profile section
            const DashboardIconAccountSection(),

            const QuoteText(),

            Search(size: size),
            // special for you
            SpecialForYou(size: size),
            //  cateogorized products
            CategorizedProducts(size: size),
          ],
        ),
      ),
    );
  }
}

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

class QuoteText extends StatelessWidget {
  const QuoteText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("Find your perfect Cake flavor",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30));
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
