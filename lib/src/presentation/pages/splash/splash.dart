import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              context.router.pushNamed('/login');
            },
            child: const Text('login')),
      ),
    );
  }
}
