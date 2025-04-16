import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portfolio/core/widgets/custom_text_form_field.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../manager/connect_cubit/connect_cubit.dart';

class LetsConnectForm extends StatelessWidget {
  const LetsConnectForm({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ConnectCubit>();
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: cubit.formKey,
      child: Column(
        spacing: 8,
        children: [
          CustomTextFormField(
            lable: 'Name',
            controller: cubit.nameConroller,
            // validator: nameValidator,
          ),
          CustomTextFormField(
            lable: 'Email',
            // validator: emailValidator,
            controller: cubit.emailConroller,
          ),
          CustomTextFormField(
            lable: 'Subject',
            // validator: subjectValidator,
            controller: cubit.subjectConroller,
          ),
          CustomTextFormField(
            lable: 'Message',
            maxLine: 4,
            // validator: messageValidator,
            controller: cubit.messageConroller,
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomButton(
                text: 'SUBMIT',
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}