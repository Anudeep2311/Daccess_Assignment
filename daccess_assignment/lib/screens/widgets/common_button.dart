import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  CommonButton({super.key, required this.onPressed, required this.text});
  Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: const MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(6),
                ),
                side: BorderSide(
                  color: Colors.black,
                  width: 0.8,
                ),
              ),
            ),
            backgroundColor:
                MaterialStatePropertyAll(Colors.blueAccent.shade700),
            foregroundColor: const MaterialStatePropertyAll(Colors.white)),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ));
  }
}
