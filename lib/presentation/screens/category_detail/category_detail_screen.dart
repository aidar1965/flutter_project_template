import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CategoryDetailScreen extends StatelessWidget {
  const CategoryDetailScreen({
    @PathParam('id') required this.categoryId,
    super.key,
  });

  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Detail'),
      ),
      body: Center(
        child: Text('Category Detail Screen: $categoryId'),
      ),
    );
  }
}