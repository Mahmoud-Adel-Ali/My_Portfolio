import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/portfolio_app.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const PortfolioApp(),
    ),
  );
}
