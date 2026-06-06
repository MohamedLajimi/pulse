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

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onSignIn() {
    if (!_formKey.currentState!.validate()) return;

    context.read<AuthBloc>().add(
      AuthEvent.signInRequested(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }

  void _handleListener(BuildContext context, AuthState state) {
    state.mapOrNull(
      error: (state) => AppSnackBar.show(
        context,
        message: state.message,
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
              body: SafeArea(
                child: SingleChildScrollView(
                  padding: const .fromLTRB(24, 24 + kToolbarHeight, 24, 24),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: .start,
                      children: [
                        const AuthHeader(
                          title: 'Welcome To Pulse',
                          subtitle: 'Please sign in to continue',
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
                          hint: 'Enter your password',
                          obscureText: _obscurePassword,
                          textInputAction: .done,
                          autofillHints: const [AutofillHints.password],
                          validator: Validators.password,
                          onSubmitted: (_) => _onSignIn(),
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
                        const SizedBox(height: 8),
                        Align(
                          alignment: .centerRight,
                          child: AppTextButton(
                            text: 'Forgot password?',
                            onPressed: () =>
                                context.pushNamed(RouteNames.forgotPassword),
                          ),
                        ),
                        const SizedBox(height: 24),
                        AppButton(
                          text: 'Sign In',
                          onPressed: _onSignIn,
                          isEnabled: !isLoading,
                        ),
                        const SizedBox(height: 32),
                        AuthFooter(
                          text: "Don't have an account? ",
                          actionText: 'Sign up',
                          onActionTap: () =>
                              context.pushNamed(RouteNames.signUp),
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
