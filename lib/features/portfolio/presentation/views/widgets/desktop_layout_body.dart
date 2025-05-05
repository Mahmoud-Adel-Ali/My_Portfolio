import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/animations/custom_fade_in_left.dart';
import '../../../../../core/widgets/animations/custom_fade_in_right.dart';
import '../../manager/scrolling_cubit/scrolling_cubit.dart';
import 'about_section_for_desktop.dart';
import 'all_projects_section_for_desktop.dart';
import 'custom_divider.dart';
import 'header_image.dart';
import 'lets_connect_section_for_desktop.dart';
import 'name_and_title_and_contact_me_section.dart';
import 'skills_section_for_desktop.dart';

class DesktopLayoutBody extends StatelessWidget {
  const DesktopLayoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ScrollingCubit>();
    return SingleChildScrollView(
      controller: cubit.scrollController,
      child: Column(
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: CustomFadeInRight(
                    duration: Constants.duration,
                    child: NameAndTitleAndContactMeSection()),
              ),
              SizedBox(width: 32),
              Expanded(
                child: CustomFadeInLeft(
                  duration: Constants.duration,
                  child: HeaderImage(
                    image: Assets.imagesMahmoud1,
                  ),
                ),
              ),
            ],
          ),
          const CustomDivider(),
          AllProjectsSectionForDesktop(key: cubit.projectsKey),
          const CustomDivider(),
          AboutSectionForDesktop(key: cubit.aboutKey),
          const CustomDivider(),
          SkillsSectionForDesktop(key: cubit.skillsKey),
          const CustomDivider(),
          LetsConnectSectionForDesktop(key: cubit.connectKey),
        ],
      ),
    );
  }
}
