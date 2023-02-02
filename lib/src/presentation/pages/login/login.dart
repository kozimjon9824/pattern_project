import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pattern_project/src/core/routes/app_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              context.router.push(VerifyRoute(phone: '90 001 16 10'));
            },
            child: const Text('verify page next')),
      ),
    );
  }
}
