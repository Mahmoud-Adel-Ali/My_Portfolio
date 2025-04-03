import 'package:flutter/material.dart';

import '../utils/size_config.dart';

class AdaptiveLayoutWidget extends StatelessWidget {
  const AdaptiveLayoutWidget({
    super.key,
    required this.desktopLayout,
    required this.tabletLayout,
    required this.mobileLayout,
  });
  final WidgetBuilder desktopLayout, tabletLayout, mobileLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth > SizeConfig.desktop) {
        return desktopLayout(context);
      } else if (constrains.maxWidth > SizeConfig.tablet) {
        return tabletLayout(context);
      } else {
        return mobileLayout(context);
      }
    });
  }
}
