import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({
    Key? key,
    @PathParam() required this.productId,
  }) : super(key: key);
  final String productId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('product $productId'),
      ),
    );
  }
}
