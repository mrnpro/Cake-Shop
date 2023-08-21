import 'package:flutter/material.dart';

import 'Components/bottom_ad.dart';
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
    return Scaffold(
        // bottomNavigationBar: BottomNavigationBar(items: const [
        //   BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.favorite_border), label: "Favorite"),
        //   BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
        // ]),
        body: _body(context));
  }

  Widget _body(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8),
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
