import 'package:flutter/material.dart';

import '../../../../../common/coustom_bottom_nav_bar.dart';
import '../../../../../common/enums.dart';
import '../widget/profile_body.dart';



class ProfilePage extends StatelessWidget {

  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const ProfileBody(),
      bottomNavigationBar: const CustomBottomNavBar(
          selectedMenu: MenuState.profile
      ),
    );
  }
}
