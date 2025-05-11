import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../manager/scrolling_cubit/scrolling_cubit.dart';
import '../../../manager/scrolling_cubit/scrolling_state.dart';
import '../desktop_layout_app_bat.dart';
import '../desktop_layout_body.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollingCubit, ScrollingState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: const Column(
            spacing: 16,
            children: [
              DesktopLayoutAppBar(),
              Expanded(child: DesktopLayoutBody()),
            ],
          ),
        );
      },
    );
  }
}
