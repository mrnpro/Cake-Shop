import 'package:cake_shop/core/constants/assets.dart';

class CakeData {
  final String? imagePath;
  final String? cakeName;
  final String? cakeCategory;

  final String? cakeShorDescription;

  final String? cakeDescription;
  final String? cakePrice;

  CakeData(
      {this.cakeCategory,
      this.imagePath,
      this.cakeName,
      this.cakeShorDescription,
      this.cakeDescription,
      this.cakePrice});
}

final List<CakeData> cakeDatas = [
  CakeData(
      imagePath: Assets.assetsImagesHotChocolateSauce,
      cakeName: "Chocolate Cake",
      cakeCategory: "Chocolate",
      cakeShorDescription: "A rich and decadent chocolate cake",
      cakeDescription:
          "This chocolate cake is made with the finest ingredients and is sure to satisfy even the most discerning chocolate lover. It is moist and fluffy, with a rich chocolate flavor that will melt in your mouth.",
      cakePrice: "100"),
  CakeData(
      imagePath: Assets.assetsImagesWhiteCake,
      cakeName: "Vanilla Cake",
      cakeCategory: "Vanilla",
      cakeShorDescription: "A classic vanilla cake",
      cakeDescription:
          "This vanilla cake is simple yet delicious. It is made with fresh, high-quality ingredients and is sure to please everyone at your next event. It is moist and fluffy, with a light vanilla flavor that is perfect for any occasion.",
      cakePrice: "80"),
  CakeData(
      imagePath: Assets.assetsImagesCakeBlack2,
      cakeName: "Red Velvet Cake",
      cakeCategory: "Specialty",
      cakeShorDescription: "A delicious and festive red velvet cake",
      cakeDescription:
          "This red velvet cake is perfect for any special occasion. It is moist and fluffy, with a rich chocolate flavor and a beautiful red velvet color. It is sure to impress your guests.",
      cakePrice: "120"),
  CakeData(
      imagePath: Assets.assetsImagesOreoIceCreamCake,
      cakeName: "Fruit Cake",
      cakeCategory: "Fruit",
      cakeShorDescription: "A moist and flavorful fruit cake",
      cakeDescription:
          "This fruit cake is made with fresh fruits and nuts, and is sure to satisfy your sweet tooth. It is moist and flavorful, with a hint of sweetness from the fruits and nuts.",
      cakePrice: "90"),
  CakeData(
      imagePath: Assets.assetsImagesCakeBlack2,
      cakeName: "Carrot Cake",
      cakeCategory: "Spicy",
      cakeShorDescription: "A moist and flavorful carrot cake",
      cakeDescription:
          "This carrot cake is made with fresh carrots, raisins, and walnuts, and is sure to satisfy your sweet tooth. It is moist and flavorful, with a hint of sweetness from the carrots and raisins.",
      cakePrice: "110")
];
