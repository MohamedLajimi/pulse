import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/utils/debouncer.dart';
import 'package:pulse/core/utils/validators.dart';
import 'package:pulse/core/widgets/app_button.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/core/widgets/app_snack_bar.dart';
import 'package:pulse/core/widgets/app_text_field.dart';
import 'package:pulse/core/widgets/field_label.dart';
import 'package:pulse/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:pulse/features/auth/presentation/widgets/auth_header.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  CountdownTimer? _countdownTimer;
  bool _canResend = true;
  final ValueNotifier<int> _remainingSeconds = ValueNotifier<int>(0);

  @override
  void dispose() {
    _emailController.dispose();
    _remainingSeconds.dispose();
    _countdownTimer?.dispose();
    super.dispose();
  }

  void _onSendResetLink() {
    if (!_formKey.currentState!.validate()) return;
    if (!_canResend) return;

    context.read<AuthBloc>().add(
      AuthEvent.resetPasswordRequested(email: _emailController.text),
    );
  }

  void _startCooldown() {
    setState(() {
      _canResend = false;
    });
    _remainingSeconds.value = 60;

    _countdownTimer?.dispose();
    _countdownTimer = CountdownTimer(
      seconds: 60,
      onTick: (remaining) => _remainingSeconds.value = remaining,
      onDone: () {
        if (mounted) {
          setState(() {
            _canResend = true;
          });
        }
      },
    );
    _countdownTimer!.start();
  }

  void _handleListener(BuildContext context, AuthState state) {
    switch (state) {
      case AuthError(:final message):
        AppSnackBar.show(context, message: message, type: SnackBarType.error);
      case ResetPasswordSent():
        AppSnackBar.show(
          context,
          message: 'Password reset link sent to your email.',
          type: SnackBarType.success,
        );
        _startCooldown();
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: _handleListener,
      builder: (context, state) {
        final isLoading = state is AuthLoading;

        return Stack(
          children: [
            Scaffold(
              appBar: AppBar(),
              body: SafeArea(
                child: SingleChildScrollView(
                  padding: const .all(24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        const AuthHeader(
                          title: 'Reset Password',
                          subtitle:
                              'Enter your email and we will send you a link to reset your password.',
                        ),
                        const SizedBox(height: 40),
                        const FieldLabel('Email'),
                        AppTextField(
                          controller: _emailController,
                          hint: 'Enter your email',
                          keyboardType: .emailAddress,
                          textInputAction: .done,
                          autofillHints: const [AutofillHints.email],
                          validator: Validators.email,
                          onSubmitted: (_) => _onSendResetLink(),
                        ),
                        const SizedBox(height: 32),
                        ValueListenableBuilder<int>(
                          valueListenable: _remainingSeconds,
                          builder: (context, remaining, child) {
                            return AppButton(
                              text: _canResend
                                  ? 'Send Reset Link'
                                  : 'Resend in ${remaining}s',
                              onPressed: _onSendResetLink,
                              isEnabled: !isLoading && _canResend,
                            );
                          },
                        ),
                        const SizedBox(height: 16),
                        Center(
                          child: AppTextButton(
                            text: 'Back to Sign In',
                            onPressed: () => context.pop(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            if (isLoading) const AppLoadingOverlay(),
          ],
        );
      },
    );
  }
}
