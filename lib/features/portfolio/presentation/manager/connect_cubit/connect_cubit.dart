import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'connect_state.dart';

class ConnectCubit extends Cubit<ConnectState> {
  ConnectCubit() : super(ConnectInitial());

  TextEditingController nameConroller = TextEditingController();
  TextEditingController emailConroller = TextEditingController();
  TextEditingController subjectConroller = TextEditingController();
  TextEditingController messageConroller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void sendMessage() {}
}
