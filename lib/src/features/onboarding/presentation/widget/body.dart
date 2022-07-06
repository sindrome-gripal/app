import 'package:flutter/material.dart';
import 'package:easy_onboard/easy_onboard.dart';
import '../../../../theme.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}


class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    return Onboard(
        primaryColor: const Color(0xff6C63FF),
        onboardPages: [
            OnboardModel(
              imagePath: 'lib/assets/images/union_sus.png', 
              title: 'Síndrome Gripal', 
              subTitle: 'OpenDataSUS - Dados Abertos'),
            OnboardModel(
              imagePath: 'lib/assets/images/bra.png', 
              title: 'Acompanhamento de casos de Síndrome Gripal no Brasil', 
              subTitle: 'Tenha informações atualizadas sobre os casos de COVID'),
            OnboardModel(
              imagePath: 'lib/assets/images/start.jpg', 
              title: 'Continue para começar', 
              subTitle: '')
        ],
        lastText: '>',
        nextText: '>',
        skipText: 'Pular',
        skipButtonPressed: () {
          Navigator.of(context).pushReplacementNamed('/login/');
        },
      );
  }
}
