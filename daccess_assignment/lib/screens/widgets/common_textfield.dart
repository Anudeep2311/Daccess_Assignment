import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({
    super.key,
    this.labelText,
    this.hintText,
    required this.controller,
  });
  final String? labelText;
  final String? hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.050,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: BorderSide.none),
            focusColor: Colors.blueAccent,
            filled: true,
            fillColor: Colors.grey.shade300,
            labelText: labelText,
            hintText: hintText,
            alignLabelWithHint: true,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6),
                borderSide: const BorderSide(color: Colors.blue))),
      ),
    );
  }
}
