import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/features/auth/providers/timer_provider.dart';

class ResendOtpSection extends StatefulWidget {
  const ResendOtpSection({super.key});

  @override
  State<ResendOtpSection> createState() => _ResendOtpSectionState();
}

class _ResendOtpSectionState extends State<ResendOtpSection> {
  final TimerProvider _timerProvider = TimerProvider();

  @override
  void initState() {
    super.initState();
    _timerProvider.startTimer(30);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _timerProvider,
      child: Consumer<TimerProvider>(
        builder: (context, timeProvider, _) {
          return Row(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [
              if (timeProvider.isRunning) Text('Resend OTP after ${timeProvider.remainingSeconds}'),
              TextButton(onPressed: _onTapResendButton, child: Text('Resend')),
            ],
          );
        },
      ),
    );
  }

  void _onTapResendButton() {
    if (_timerProvider.isRunning) return;
    _timerProvider.startTimer(60);
  }
}
