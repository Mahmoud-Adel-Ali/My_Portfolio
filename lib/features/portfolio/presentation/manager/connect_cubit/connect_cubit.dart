import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import 'connect_state.dart';

class ConnectCubit extends Cubit<ConnectState> {
  ConnectCubit() : super(ConnectInitial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void sendUserMessage() async {
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
      ..from = Address(emailController.text, nameController.text)
      ..recipients.add(Address(gmailMail, "Mahmoud Adel Ali"))
      ..subject = subjectController.text
      ..text = messageController.text;

    try {
      emit(SendMessageLoading());
      //Send The Message
      final sendReport = await send(message, gmailSMTP);
      log('Message sent: $sendReport');
      _reInitControllers();
      emit(SendMessageSuccess());
    } on MailerException catch (e) {
      emit(SendMessageFailure(message: e.toString()));
    }
  }

  void _reInitControllers() {
    nameController = TextEditingController();
    emailController = TextEditingController();
    subjectController = TextEditingController();
    messageController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

//
}
