import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openUrl(BuildContext context, String url) async {
  final Uri uri = Uri.parse(url);

  try {
    final bool launched = await launchUrl(uri);
    if (!launched) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Could not launch the URL'),
          backgroundColor: Colors.red,
        ),
      );
      // throw 'Could not launch the URL';
    }
  } catch (e) {
    // ignore: use_build_context_synchronously
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(e.toString()),
        backgroundColor: Colors.red,
      ),
    );
  }
}
