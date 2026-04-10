import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/theme/app_theme.dart';
import '../core/utils/size_config.dart';
import '../features/portfolio/presentation/manager/connect_cubit/connect_cubit.dart';
import '../features/portfolio/presentation/manager/scrolling_cubit/scrolling_cubit.dart';
import '../features/portfolio/presentation/views/portfolio_view.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<ConnectCubit>(
          create: (context) => ConnectCubit(),
        ),
        BlocProvider(
          create: (context) => ScrollingCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Mahmoud-Adel-Ali',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        home: const PortfolioView(),
      ),
    );
  }
}
