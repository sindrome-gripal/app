import 'package:basearch/src/common/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../viewmodel/signup_viewmodel.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}


class _SignUpPageState extends ModularState<SignUpPage, SignUpViewModel> {
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

  Widget get _name => widget.createFormField(
        textLabel: 'name'.i18n(),
        theme: ThemeData(),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        hint: 'name'.i18n(),
        enabled: !store.isLoading,
        errorText: null, //store.error.name,
        onChange: (value) => store.name = value,
      );
  
  Widget get _fullname => widget.createFormField(
        textLabel: 'fullname'.i18n(),
        theme: ThemeData(),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        hint: 'fullname'.i18n(),
        enabled: !store.isLoading,
        errorText: null, //store.error.fullName,
        onChange: (value) => store.fullName = value,
      );
  
  Widget get _username => widget.createFormField(
        textLabel: 'username'.i18n(),
        theme: ThemeData(),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        hint: 'username'.i18n(),
        enabled: !store.isLoading,
        errorText: store.error.username,
        onChange: (value) => store.username = value,
      );

  Widget get _password => widget.createFormField(
        textLabel: 'password'.i18n(),
        theme: ThemeData(),
        keyboardType: TextInputType.text,
        obscureText: obscureText,
        hint: 'password'.i18n(),
        enabled: !store.isLoading,
        errorText: store.error.password,
        onChange: (value) => store.password = value,
        suffixIcon: hideShowIconButton()
      );
  
  Widget get _confirmPassword => widget.createFormField(
        textLabel: 'password_comfirm'.i18n(),
        theme: ThemeData(),
        keyboardType: TextInputType.text,
        obscureText: obscureText,
        hint: 'password_comfirm'.i18n(),
        enabled: !store.isLoading,
        errorText: store.error.password,
        onChange: (value) => store.password = value,
        suffixIcon: hideShowIconButton()
      );
  
   Widget get _signUpButton => Container(
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
              if(!store.isLoading) {
                store.createAccount();
                Future.delayed(const Duration(seconds: 5)).then((_) {
                  if(store.isCreated) {
                    print('created ok');
                    Navigator.pop(context);
                    Modular.to.pushNamed('/sign-up/create-account-confirm/');    
                  }
                });
              } 
            },
          child: Text('sign_up'.i18n()),
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
                    _name,
                    _fullname,
                    _username,
                    _password,
                    _confirmPassword,
                    _signUpButton
                  ],
                ),
              ),
            ]),
        ),
      ),
    );
  }
}

