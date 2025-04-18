import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import '../../../../../constants.dart';
import 'connect_state.dart';

class ConnectCubit extends Cubit<ConnectState> {
  ConnectCubit() : super(ConnectInitial());

  TextEditingController nameConroller = TextEditingController();
  TextEditingController emailConroller = TextEditingController();
  TextEditingController subjectConroller = TextEditingController();
  TextEditingController messageConroller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void sendMessage() async {
    try {
      emit(SendMessageLoading());

      // Developer uses Gmail account and app password
      String username = 'mahadel@gmail.com'; // your Gmail address
      // your generated Gmail app password
      String password = Constants.appPassword;

      // Developer uses smtpServer with Gmail configuration
      final smtpServer = gmail(username, password);

      // Developer constructs the message to be sent
      final message = Message()
        ..from = Address(username, nameConroller.text)
        ..recipients.add(Address('recipientEmail'))
        ..subject = subjectConroller.text
        ..text = messageConroller.text;

      // Developer sends the message using the SMTP server
      final sendReport = await send(message, smtpServer);

      log('Message sent: $sendReport');
      emit(SendMessageSuccess());
    } catch (e) {
      emit(SendMessageFailure(message: e.toString()));
    }
  }

//
}
