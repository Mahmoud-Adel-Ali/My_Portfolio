import 'package:flutter/material.dart';

import '../lets_connect_form.dart';
import '../lets_connect_info.dart';

class LetsConnectSectionForDesktop extends StatelessWidget {
  const LetsConnectSectionForDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: const Row(
        spacing: 32,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: LetsConnectInfo()),
          Expanded(child: LetsConnectForm()),
        ],
      ),
    );
  }
}
