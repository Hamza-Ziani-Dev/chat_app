import 'package:chat_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: kPrimaryColor,
          padding: const EdgeInsets.all(20)),
      child: Center(
        child: Text(
          "login".toUpperCase(),
          style: const TextStyle(color: Colors.black45),
        ),
      ),
    );
  }
}
