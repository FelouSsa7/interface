import 'package:flutter/material.dart';

import 'package:interface_acheteur/widgets/details/details_drawer.dart';
import 'package:interface_acheteur/widgets/home/home_body.dart';

import '../widgets/details/user_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userData = UserData(
        name: 'ouail',
        email: 'ouail@email.com',
        phoneNumber: '0664349500',
        photoUrl: 'assets/images/ouailbnr.jpg',
        username: 'feloussa');

    return Scaffold(
      drawer: NavBar(userData: userData),
      body: const Body(),
    );
  }
}
