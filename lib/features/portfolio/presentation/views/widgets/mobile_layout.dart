import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../manager/scrolling_cubit/scrolling_cubit.dart';
import '../../manager/scrolling_cubit/scrolling_state.dart';
import 'mobile_layout_body.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollingCubit, ScrollingState>(
      builder: (context, state) {
        return MobileLayoutBody();
      },
    );
  }
}
