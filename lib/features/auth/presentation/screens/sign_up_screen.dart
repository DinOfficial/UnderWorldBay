import 'package:flutter/material.dart';
import 'package:underworld_bay/app/app_colors.dart';
import 'package:underworld_bay/app/app_theme.dart';
import 'package:underworld_bay/app/extentions/localization_extention.dart';
import 'package:underworld_bay/app/extentions/utils_extention.dart';
import 'package:underworld_bay/features/auth/presentation/screens/otp_verify_screen.dart';
import 'package:underworld_bay/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:underworld_bay/features/auth/presentation/widgets/app_logo.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .center,
                children: [
                  const SizedBox(height: 60),
                  AppLogo(height: 120, width: 120),
                  const SizedBox(height: 28),
                  Text(
                    context.l10n.signup_with_email,
                    style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    context.l10n.get_started,
                    style: context.textTheme.bodyLarge?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _emailTEController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(hintText: context.l10n.email),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _firstNameTEController,
                    decoration: InputDecoration(hintText: context.l10n.first_name),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _lastNameTEController,
                    decoration: InputDecoration(hintText: context.l10n.last_name),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _phoneTEController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: context.l10n.phone),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _cityTEController,
                    decoration: InputDecoration(hintText: context.l10n.city),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEController,
                    obscureText: true,
                    decoration: InputDecoration(hintText: context.l10n.password),
                  ),
                  const SizedBox(height: 12),
                  FilledButton(
                    onPressed: _onTapSignUpButton,
                    child: Text(
                      context.l10n.sign_up,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: _onTapSignInButton,
                    child: Text(context.l10n.already_have_account),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignUpButton() {
    Navigator.pushNamed(context, OtpVerifyScreen.name);
  }

  void _onTapSignInButton() {
    Navigator.pushNamed(context, SignInScreen.name);
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _phoneTEController.dispose();
    _cityTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
