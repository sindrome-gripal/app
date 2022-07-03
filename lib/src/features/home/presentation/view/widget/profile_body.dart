import 'package:flutter/material.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';


class ProfileBody extends StatelessWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const ProfilePic(),
          const SizedBox(height: 20),
          ProfileMenu(
            text: "My Account",
            icon: "lib/assets/icons/UserIcon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "lib/assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "lib/assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "lib/assets/icons/QuestionMark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "lib/assets/icons/LogOut.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
