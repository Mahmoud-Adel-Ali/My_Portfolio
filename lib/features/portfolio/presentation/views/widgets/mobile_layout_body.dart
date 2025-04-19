import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/assets.dart';
import '../../manager/scrolling_cubit/scrolling_cubit.dart';
import 'about_section_for_mobile.dart';
import 'all_projects_section_for_mobile.dart';
import 'custom_divider.dart';
import 'header_image.dart';
import 'lets_connect_section_for_mobile.dart';
import 'name_and_title_and_contact_me_section.dart';
import 'skills_section_for_mobile.dart';

class MobileLayoutBody extends StatelessWidget {
  const MobileLayoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<ScrollingCubit>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        controller: cubit.scrollController,
        child: Column(
          spacing: 16,
          children: [
            const NameAndTitleAndContactMeSection(),
            const HeaderImage(image: Assets.imagesMahmoud1),
            const CustomDivider(),
            AllProjectsSectionForMobile(key: cubit.projectsKey),
            const CustomDivider(),
            AboutSectionForMobile(key: cubit.aboutKey),
            const CustomDivider(),
            SkillsSectionForMobile(key: cubit.skillsKey),
            const CustomDivider(),
            LetsConnectSectionForMobile(key: cubit.connectKey),
          ],
        ),
      ),
    );
  }
}
