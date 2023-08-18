import 'package:flutter/material.dart';

import '../../core/constants/assets.dart';
import '../../core/constants/colors.dart';
import 'Components/category.dart';
import 'Components/dashboard_icon_account_section.dart';
import 'Components/quote_like_text.dart';
import 'Components/search.dart';
import 'Components/special_for_you.dart';

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
        child: SingleChildScrollView(
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
              BottomAD(size: size),
            ],
          ),
        ),
      ),
    );
  }
}

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
