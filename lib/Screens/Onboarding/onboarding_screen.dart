import 'package:flutter/material.dart';

import '../../core/constants/assets.dart';
import '../../core/constants/colors.dart';
import '../Login/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pageIndex = 0;
  late PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    print(pageIndex);
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _welcomeLikeText(),
              _swipeView(size),
              _dots(size),

              // checking on index 2 , cuz currently that is the last known page
              pageIndex == 2 ? _nextBtn(context) : _startBtn()
            ],
          ),
        ),
      ),
    );
  }

  Align _welcomeLikeText() {
    return const Align(
      alignment: Alignment.topCenter,
      child: Text(
        "Welcome to\nCake Shop",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
    );
  }

  ElevatedButton _startBtn() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.kOrange,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          int nextPage = pageIndex + 1;
          _pageController.animateToPage(nextPage,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeIn);
        },
        child: const Text("Next"));
  }

  ElevatedButton _nextBtn(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.kOrange,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: const Text("Start"));
  }

  SizedBox _dots(Size size) {
    return SizedBox(
      width: size.width,
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              if (index == pageIndex) {
                return Container(
                  margin: const EdgeInsets.all(3),
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color: MyColors.kOrange,
                      borderRadius: BorderRadius.circular(100)),
                );
              }
              return Container(
                margin: const EdgeInsets.all(3),
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                    border: Border.all(color: MyColors.kOrange),
                    borderRadius: BorderRadius.circular(100)),
              );
            },
          ),
        ],
      ),
    );
  }

  SizedBox _swipeView(Size size) {
    return SizedBox(
      height: size.height / 2,
      child: PageView(
          controller: _pageController,
          onPageChanged: (pageIndex) {
            setState(() {
              this.pageIndex = pageIndex;
            });
          },
          children: [
            Image.asset(Assets.assetsImagesLoginOnboarding),
            Image.asset(Assets.assetsImagesHomeOnboarding),
            Image.asset(Assets.assetsImagesAccountSettingsOnboarding)
          ]),
    );
  }
}
