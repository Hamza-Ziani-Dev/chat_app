import 'package:chat_app/screens/auth/login_screen.dart';
import 'package:chat_app/utils/colors.dart';
import 'package:chat_app/widget/custom_button.dart';
import 'package:chat_app/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                    (route) => false);
              },
              icon: const Icon(Icons.login_outlined)),
        ],
      ),
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
                "Welcome",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "register to continue",
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
              const CustomElevatedButton(),
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
