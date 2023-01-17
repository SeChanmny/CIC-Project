import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DirectoryTextFromFiled extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final Color? fillColor;
  final bool? filled;
  final Widget? suffixIcon;
  ValueChanged<String>? onChanged;

  DirectoryTextFromFiled(
      {super.key,
      this.hintText,
      this.controller,
      this.fillColor,
      this.filled,
      this.onChanged,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        // suffixIcon: GestureDetector(
        //   onTap: () {
        //     print('Tab');
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => const FilterList(),
        //         ));
        //   },
        //   child: const Icon(Icons.filter_list),
        // ),
        contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
        prefixIcon:
            SvgPicture.asset('assets/svg/Search.svg', fit: BoxFit.scaleDown),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusColor: Colors.transparent,
        hintText: 'search',
        hintStyle: const TextStyle(fontSize: 16),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        filled: filled,
        fillColor: fillColor,
      ),
    );
  }
}
