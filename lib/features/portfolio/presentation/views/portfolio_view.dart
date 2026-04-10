import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/adaptive_layout_widget.dart';
import 'widgets/desktop/desktop_app_bar_name.dart';
import 'widgets/desktop/desktop_layout.dart';
import 'widgets/mobile/custom_drawer.dart';
import 'widgets/mobile/mobile_layout.dart';

class PortfolioView extends StatefulWidget {
  const PortfolioView({super.key});

  @override
  State<PortfolioView> createState() => _PortfolioViewState();
}

class _PortfolioViewState extends State<PortfolioView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: AppColors.background,
        appBar: SizeConfig.isMobile(context) ? _buildAppBar() : null,
        body: AdaptiveLayoutWidget(
          desktopLayout: (context) => DesktopLayout(),
          tabletLayout: (context) => DesktopLayout(),
          mobileLayout: (context) => MobileLayout(),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const DesktopAppBarName(),
      backgroundColor: AppColors.background,
      flexibleSpace: FlexibleSpaceBar(
        background: Container(color: AppColors.background),
      ),
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu_outlined)),
    );
  }
}
