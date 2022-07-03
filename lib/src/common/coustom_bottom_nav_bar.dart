import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color.fromARGB(255, 0, 0, 0);
    final Color kPrimaryColor = Color.fromARGB(255, 0, 186, 19);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: Color.fromARGB(255, 109, 109, 109).withOpacity(0.1),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              // User profile 
              IconButton(
                icon: SvgPicture.asset(
                    "lib/assets/icons/UserIcon.svg",
                    color: MenuState.profile == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, '/home/profile'),
              ),
              
              // Workout panel
              IconButton(
                icon: SvgPicture.asset(
                    "lib/assets/icons/Workout.svg",
                ),
                onPressed: () {},
              ),
              
              // Home page
              IconButton(
                icon: SvgPicture.asset(
                    "lib/assets/icons/home.svg",
                    color: MenuState.home == selectedMenu
                        ? kPrimaryColor
                        : inActiveIconColor,
                ),
                onPressed: () =>
                  Navigator.pushNamed(context, '/home/'),
              ),
              
              // Finances page
              IconButton(
                icon: SvgPicture.asset(
                    "lib/assets/icons/Finances.svg",
                ),
                onPressed: () {}
              ),
             
              // Chatbot conversation
              IconButton(
                icon: SvgPicture.asset(
                    "lib/assets/icons/ChatBubbleIcon.svg"
                ),
                onPressed: () {}
              ),
            ],
          )
      ),
    );
  }
}
