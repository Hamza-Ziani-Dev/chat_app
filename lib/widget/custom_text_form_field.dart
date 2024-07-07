import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatefulWidget {
  final String lable;
  final IconData icon;
  bool isPass;
  final TextEditingController controller;

  CustomTextFormField(
      {super.key,
      required this.lable,
      required this.icon,
      required this.controller,
      required this.isPass});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool showPass = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText:widget.isPass ? showPass : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPass
            ? IconButton(
                onPressed: () {
                  setState(() {
                    showPass = !showPass;
                  });
                },
                icon: const Icon(Icons.remove_red_eye_outlined))
            : const SizedBox(),
        prefixIcon: Icon(widget.icon),
        contentPadding: const EdgeInsets.all(16),
        hintText: widget.lable,
        hintStyle: const TextStyle(color: Colors.white),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white12, width: 2),
        ),
      ),
    );
  }
}
