import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/size_config.dart';
import 'features/portfolio/presentation/manager/connect_cubit/connect_cubit.dart';
import 'features/portfolio/presentation/views/protfolio_view.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocProvider<ConnectCubit>(
      create: (context) => ConnectCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(useMaterial3: true),
        home: const ProtfolioView(),
      ),
    );
  }
}
