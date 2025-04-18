import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/functions/show_message.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../manager/connect_cubit/connect_cubit.dart';
import '../../manager/connect_cubit/connect_state.dart';

class LetsConnectButtonBlocConsumer extends StatelessWidget {
  const LetsConnectButtonBlocConsumer({
    super.key,
    required this.cubit,
  });

  final ConnectCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectCubit, ConnectState>(
      listener: (context, state) {
        if (state is SendMessageSuccess) {
          showMessage(
            context,
            message: "Message Sent Successfully",
            color: AppColors.main,
          );
        } else if (state is SendMessageFailure) {
          log(state.message);
          showMessage(context, message: state.message);
        }
      },
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            state is SendMessageLoading
                ? const CircularProgressIndicator()
                : CustomButton(
                    text: 'SUBMIT',
                    onPressed: () {
                      if (cubit.formKey.currentState!.validate()) {
                        cubit.sendMessage();
                      }
                    },
                  ),
          ],
        );
      },
    );
  }
}
