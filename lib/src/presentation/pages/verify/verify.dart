import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pattern_project/src/core/routes/app_router.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key? key, required this.phone}) : super(key: key);
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            onPressed: () {
              context.router
                  .pushAndPopUntil(const MainRoute(), predicate: (_) => false);
            },
            child: Text('verify page - $phone -> MAIN PAGE')),
      ),
    );
  }
}
