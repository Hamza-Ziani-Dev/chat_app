import 'package:chat_app/utils/colors.dart';
import 'package:chat_app/widget/custom_button.dart';
import 'package:chat_app/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                'assets/svg/n_logo.svg',
                height: 120,
                colorFilter: ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Rest Password",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "Please Enter Your Email",
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                lable: "Email",
                icon: Icons.email,
                controller: _emailController,
                isPass: false,
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 2,
              ),
              const CustomElevatedButton(
              ),
              const SizedBox(
                height: 20,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
