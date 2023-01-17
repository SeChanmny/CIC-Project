import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String? hintText;
  final Color? color;
  final bool? filled;
  final InputBorder? inputBorder;
  final String? initialValue;
  final ValueChanged<String>? onChanged;
  final bool enabled;
  final String? labelText;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;
  const CustomTextFiled(
      {super.key,
      this.hintText,
      this.color,
      this.filled,
      this.inputBorder,
      this.initialValue,
      this.onChanged,
      required this.enabled,
      this.labelText,
      this.onTap,
      this.controller});

  @override
  build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      child: TextFormField(
        controller: controller,
        onTap: onTap,
        initialValue: initialValue,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: Color(0xff848F92)),
          labelStyle: const TextStyle(color: Color(0xff0D1F3C), fontSize: 13),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          enabled: enabled,
          labelText: labelText,
          hintText: hintText,
          fillColor:
              initialValue != "" ? Colors.white : const Color(0xffF2F2F2),
          filled: filled,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: initialValue != ""
                ? const BorderSide()
                : const BorderSide(color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
