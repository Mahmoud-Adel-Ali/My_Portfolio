import 'package:flutter/material.dart';
import 'package:my_portfolio/core/widgets/custom_text_form_field.dart';

import '../../../../../core/widgets/custom_button.dart';

class LetsConnectForm extends StatelessWidget {
  const LetsConnectForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 8,
        children: [
          CustomTextFormField(
            lable: 'Name',
            // controller: ,
          ),
          CustomTextFormField(
            lable: 'Email',
            // controller: ,
          ),
          CustomTextFormField(
            lable: 'Subject',
            // controller: ,
          ),
          CustomTextFormField(
            lable: 'Message',
            maxLine: 4,
            // controller: ,
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
