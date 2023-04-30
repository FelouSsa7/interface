import 'package:flutter/material.dart';
import 'package:interface_acheteur/widgets/details/details_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      bottom: false,
      child: HeaderWithSearchBox(),
    );
  }
}
