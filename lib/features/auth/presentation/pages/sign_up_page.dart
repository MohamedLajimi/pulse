import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/utils/validators.dart';
import 'package:pulse/core/widgets/app_button.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/core/widgets/app_snack_bar.dart';
import 'package:pulse/core/widgets/app_text_field.dart';
import 'package:pulse/core/widgets/field_label.dart';
import 'package:pulse/features/auth/presentation/bloc/auth_bloc/auth_bloc.dart';
import 'package:pulse/features/auth/presentation/widgets/auth_footer.dart';
import 'package:pulse/features/auth/presentation/widgets/auth_header.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  void _onSignUp() {
    if (!_formKey.currentState!.validate()) return;

    context.read<AuthBloc>().add(
      AuthEvent.signUpRequested(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }

  void _handleListener(BuildContext context, AuthState state) {
    state.mapOrNull(
      error: (error) => AppSnackBar.show(
        context,
        message: error.message,
        type: SnackBarType.error,
      ),
    );
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
                          title: 'Create Account',
                          subtitle: 'Sign up to get started with Pulse',
                        ),
                        const SizedBox(height: 40),
                        const FieldLabel('Email'),
                        AppTextField(
                          controller: _emailController,
                          hint: 'Enter your email',
                          keyboardType: .emailAddress,
                          textInputAction: .next,
                          autofillHints: const [AutofillHints.email],
                          validator: Validators.email,
                        ),
                        const SizedBox(height: 20),
                        const FieldLabel('Password'),
                        AppTextField(
                          controller: _passwordController,
                          hint: 'Create a password',
                          obscureText: _obscurePassword,
                          textInputAction: .next,
                          autofillHints: const [AutofillHints.newPassword],
                          validator: Validators.password,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: 20,
                            ),
                            onPressed: () => setState(
                              () => _obscurePassword = !_obscurePassword,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const FieldLabel('Confirm Password'),
                        AppTextField(
                          controller: _confirmPasswordController,
                          hint: 'Re-enter your password',
                          obscureText: _obscureConfirmPassword,
                          textInputAction: .done,
                          autofillHints: const [AutofillHints.newPassword],
                          validator: (value) => Validators.confirmPassword(
                            value,
                            _passwordController.text,
                          ),
                          onSubmitted: (_) => _onSignUp(),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscureConfirmPassword
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              size: 20,
                            ),
                            onPressed: () => setState(
                              () => _obscureConfirmPassword =
                                  !_obscureConfirmPassword,
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                        AppButton(
                          text: 'Sign Up',
                          onPressed: _onSignUp,
                          isEnabled: !isLoading,
                        ),
                        const SizedBox(height: 32),
                        AuthFooter(
                          text: 'Already have an account? ',
                          actionText: 'Sign in',
                          onActionTap: () =>
                              context.pushReplacementNamed(RouteNames.signIn),
                        ),
                        const SizedBox(height: 24),
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
