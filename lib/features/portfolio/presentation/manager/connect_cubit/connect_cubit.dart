import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

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
    String username = emailConroller.text; // your Gmail address
    String password = 'kboz xmxf rwfb umfw'; // your generated Gmail app password

    // Developer uses smtpServer with Gmail configuration
    final smtpServer = gmail(username, password);

    // Using the data you provided
    String recipientEmail = "mamali@gmail.com";
    String recipientName = "Mam Ali";

    // Developer constructs the message to be sent
    final message = Message()
      ..from = Address(username, nameConroller.text)
      ..recipients.add(Address(recipientEmail, recipientName))
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