import 'package:flutter/material.dart';

class QuoteText extends StatelessWidget {
  const QuoteText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomLeft,
      child: Text("Find your perfect Cake flavor🍰",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
    );
  }
}
