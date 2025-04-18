import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
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
    String gmailMail = dotenv.env['Gmail_Mail']!;
    String gmailPassword = dotenv.env['Gmail_Password']!;
    // Create SMTP Server For Gmail
    final gmailSMTP = SmtpServer(
      'smtp.gmail.com',
      port: 587,
      ssl: false,
      username: gmailMail,
      password: gmailPassword,
    );
    //Sending Mail From The User Using SMTP
    final message = Message()
      ..from = Address(gmailMail, "Mahmoud Adel Ali")
      ..recipients.add(Address(emailConroller.text, nameConroller.text))
      ..subject = subjectConroller.text
      ..text = messageConroller.text;

    try {
      emit(SendMessageLoading());
      //Send The Message
      final sendReport = await send(message, gmailSMTP);
      log('Message sent: $sendReport');
      emit(SendMessageSuccess());
    } on MailerException catch (e) {
      emit(SendMessageFailure(message: e.toString()));
    }
  }

//
}
