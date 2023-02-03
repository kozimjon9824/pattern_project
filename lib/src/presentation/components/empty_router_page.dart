import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class EmptyRouterPage extends StatelessWidget {
  const EmptyRouterPage({super.key});

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context);
    return const Scaffold(body: AutoRouter());
  }
}
