import 'package:flutter/material.dart';

class VerifyPage extends StatelessWidget {
  const VerifyPage({Key? key, required this.phone}) : super(key: key);
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('verify - $phone'),
      ),
    );
  }
}
