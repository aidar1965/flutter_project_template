import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    this.error,
    super.key,
  });

  final String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Text(error ?? 'An error occurred'),
      ),
    );
  }
}