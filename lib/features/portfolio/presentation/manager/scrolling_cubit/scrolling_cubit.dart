import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'scrolling_state.dart';

class ScrollingCubit extends Cubit<ScrollingState> {
  ScrollingCubit() : super(ScrollingInitial());
  //Controller
  final ScrollController scrollController = ScrollController();
  // Section Keys
  final projectsKey = GlobalKey();
  final aboutKey = GlobalKey();
  final skillsKey = GlobalKey();
  final connectKey = GlobalKey();
  //
  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
