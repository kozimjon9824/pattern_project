import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pattern_project/src/core/routes/app_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              context.router.push(ProductDetailRoute(productId: '122334'));
            },
            child: const Text('home')),
      ),
    );
  }
}
