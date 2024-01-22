import 'package:flutter/material.dart';

class CommonSizedBox extends StatelessWidget {
  const CommonSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 15,
    );
  }
}

class SmallSizedBox extends StatelessWidget {
  const SmallSizedBox({super.key});
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 8,
    );
  }
}
