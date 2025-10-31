import 'package:flutter/material.dart';

import '../lets_connect_info.dart';

class LetsConnectSectionForMobile extends StatelessWidget {
  const LetsConnectSectionForMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: const Column(
        spacing: 32,
        children: [
          LetsConnectInfo(),
          // LetsConnectForm(),
        ],
      ),
    );
  }
}
