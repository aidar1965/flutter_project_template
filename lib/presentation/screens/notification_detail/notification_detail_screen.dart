import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationDetailScreen extends StatelessWidget {
  const NotificationDetailScreen({
    @PathParam('id') required this.notificationId,
    super.key,
  });

  final String notificationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Detail'),
      ),
      body: Center(
        child: Text('Notification Detail Screen: $notificationId'),
      ),
    );
  }
}