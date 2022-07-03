import 'package:flutter/material.dart';

import '../widget/home_body.dart';
import '../../../../../common/enums.dart';
import '../../../../../common/coustom_bottom_nav_bar.dart';



class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
