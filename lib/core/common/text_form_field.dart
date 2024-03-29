import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/colors.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    this.validator,
    required this.svgIcon,
    required this.hintText,
    this.keyboardType,
    this.controller,
    this.obscureText,
    this.postSvgIcon,
  });
  final String? Function(String?)? validator;
  final SvgPicture svgIcon;
  final String hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final bool? obscureText;
  final SvgPicture? postSvgIcon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.86,
      height: 52,
      child: TextFormField(
        obscureText: obscureText ?? false,
        controller: controller,
        enabled: true,
        keyboardType: keyboardType,
        validator: validator,
        decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: MyColors.ksecondaryColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: const BorderSide(
              width: 1,
              color: Color.fromARGB(255, 167, 167, 167),
            ),
          ),
          prefixIcon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [svgIcon],
                ),
              ),
            ],
          ),
          suffix: postSvgIcon,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: const EdgeInsets.all(0),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 16,
            height: 1.4,
          ),
          errorStyle: const TextStyle(fontSize: 12, height: 0.8),
        ),
      ),
    );
  }
}
