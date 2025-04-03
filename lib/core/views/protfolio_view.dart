import 'package:flutter/material.dart';

import '../utils/size_config.dart';
import '../widgets/adaptive_layout_widget.dart';

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
      backgroundColor: const Color(0xfff7f9fa),
      appBar: MediaQuery.sizeOf(context).width <= SizeConfig.tablet
          ? AppBar(
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(color: Colors.white),
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
