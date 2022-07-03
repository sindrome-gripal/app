import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/signup_viewmodel.dart';


class SignUpConfirmPage extends StatefulWidget {
  const SignUpConfirmPage({ Key? key }) : super(key: key);

  @override
  State<SignUpConfirmPage> createState() => _SignUpConfirmPageState();
}


class _SignUpConfirmPageState extends State<SignUpConfirmPage> {
  bool obscureText = true;


  hideShowIconButton(){
    return IconButton(
      onPressed: () {
          setState(() {
            obscureText = !obscureText;
          });
      },
      icon: Icon(
        obscureText ? Icons.visibility_off :  Icons.visibility)
    );
  }

  pageTitle(String labelTextTitle, String labelTextDescription){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          labelTextTitle,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          labelTextDescription,
          style: const TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 142, 130, 130),
          ),
        )
      ],
    );
  }
  
   Widget get _homePageButton => Container(
        margin: const EdgeInsets.fromLTRB(30, 15, 30, 5),
        width: double.infinity,
        height: 56,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          onPressed: () {
              Navigator.pop(context);
              Modular.to.pushNamed('/login/');    
            },
          child: Text('back_login_page'.i18n()),
        ),
      );
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton( 
          onPressed:() {
              Navigator.of(context).pushReplacementNamed('/login/');
          },
        icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black)
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    pageTitle('sign_up'.i18n(), 'create_account'.i18n()),
                    const SizedBox(height: 30),
                    const Text("Account created. Back to login page."),
                    _homePageButton
                  ],
                ),
              ),
            ]),
        ),
      ),
    );
  }
}

