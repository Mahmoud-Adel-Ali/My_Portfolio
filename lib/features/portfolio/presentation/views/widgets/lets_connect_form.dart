import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/widgets/custom_text_form_field.dart';

import '../../manager/connect_cubit/connect_cubit.dart';
import '../../manager/connect_cubit/connect_state.dart';
import '../../manager/functions/validators.dart';
import 'lets_connect_button_bolc_consumer.dart';

class LetsConnectForm extends StatelessWidget {
  const LetsConnectForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ConnectCubit>();
    return BlocBuilder<ConnectCubit, ConnectState>(
      builder: (context, state) {
        return Form(
          key: cubit.formKey,
          child: Column(
            spacing: 8,
            children: [
              CustomTextFormField(
                lable: 'Name',
                controller: cubit.nameController,
                validator: nameValidator,
              ),
              CustomTextFormField(
                lable: 'Email',
                validator: emailValidator,
                controller: cubit.emailController,
              ),
              CustomTextFormField(
                lable: 'Subject',
                validator: subjectValidator,
                controller: cubit.subjectController,
              ),
              CustomTextFormField(
                lable: 'Message',
                maxLine: 4,
                validator: messageValidator,
                controller: cubit.messageController,
              ),
              SizedBox(height: 16),
              LetsConnectButtonBlocConsumer(cubit: cubit)
            ],
          ),
        );
      },
    );
  }
}
