import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:underworld_bay/app/extentions/localization_extention.dart';
import 'package:underworld_bay/app/extentions/utils_extention.dart';
import 'package:underworld_bay/features/auth/presentation/widgets/app_logo.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  static const String name = '/otp_verify';

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final TextEditingController _otpTEController = TextEditingController();

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
                    context.l10n.enter_otp_code,
                    style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    context.l10n.six_digit_otp,
                    style: context.textTheme.bodyLarge?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  PinCodeTextField(
                    controller: _otpTEController,
                    keyboardType: TextInputType.number,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    animationDuration: Duration(milliseconds: 300),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 50,
                      fieldWidth: 50,
                    ),
                    appContext: context,
                  ),
                  const SizedBox(height: 8),
                  FilledButton(
                    onPressed: () {},
                    child: Text(
                      context.l10n.verify,
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .center,
                    children: [
                      Text('Resend OTP after 120s'),
                      TextButton(onPressed: () {}, child: Text('Resend')),
                    ],
                  ),
                  const SizedBox(height: 12),
                  TextButton(onPressed: () {}, child: Text('Already have an account? Sign in')),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _otpTEController.dispose();
    super.dispose();
  }
}
