import 'package:flutter/material.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const AppLoadingIndicator(size: 40));
  }
}
