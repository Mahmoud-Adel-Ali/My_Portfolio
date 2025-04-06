import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/adaptive_layout_widget.dart';
import 'widgets/app_bar_name.dart';
import 'widgets/custom_drawer.dart';
import 'widgets/desktop_layout.dart';
import 'widgets/mobile_layout.dart';

class ProtfolioView extends StatefulWidget {
  const ProtfolioView({super.key});

  @override
  State<ProtfolioView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<ProtfolioView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: AppColors.background,
      appBar: MediaQuery.sizeOf(context).width <= SizeConfig.tablet
          ? AppBar(
              title: AppBarName(),
              backgroundColor: AppColors.background,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(color: AppColors.background),
              ),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      body: AdaptiveLayoutWidget(
        desktopLayout: (context) => DesktopLayout(),
        tabletLayout: (context) => DesktopLayout(),
        mobileLayout: (context) => MobileLayout(),
      ),
    );
  }
}
