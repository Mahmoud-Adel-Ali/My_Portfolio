import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/size_config.dart';
import '../../../../core/widgets/adaptive_layout_widget.dart';

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
      // drawer: const CustomDrawer(),
      backgroundColor: AppColors.background,
      appBar: MediaQuery.sizeOf(context).width <= SizeConfig.tablet
          ? AppBar(
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
        //DesktoopLayout(),
        desktopLayout: (context) =>
            const SizedBox(child: Center(child: Text('DeskTop'))),
        // DashboardTabletLayout(),
        tabletLayout: (context) =>
            const SizedBox(child: Center(child: Text('Taplet'))),
        // DashboardMobileLayout(),
        mobileLayout: (context) =>
            const SizedBox(child: Center(child: Text('Mobile'))),
      ),
    );
  }
}
