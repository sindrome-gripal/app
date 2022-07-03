import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:basearch/src/common/form_text_field.dart';
import 'package:localization/localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../../common/text_button_with_redirect.dart';
import '../../viewmodel/login_viewmodel.dart';
import '../../../../../app_widget.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends ModularState<LoginPage, LoginViewModel> {
  bool obscureText = true;
  Locale selectLocale = const Locale('pt', 'BR');


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

  Widget get _loginButton => Container(
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
                store.login();
                Future.delayed(const Duration(seconds: 5)).then((_) {
                  if(store.isLogged) {
                    Navigator.pop(context);
                    Modular.to.pushNamed('/home/');    
                  }
                });
              } 
            },
          child: Text('sign_in'.i18n()),
        ),
      );

  Widget get _localeButton => DropdownButton(
        value: selectLocale,
        items: const [
            DropdownMenuItem(
              child: Text("en - US"),
              value: Locale('en', 'US')
            ),
            DropdownMenuItem(
              child: Text("pt - BR"),
              value: Locale('pt', 'BR'),
            )
        ],
        onChanged: (value){
          setState(() {
            if (selectLocale.toLanguageTag() == 'pt-BR'){
              selectLocale = const Locale('en', 'US');
            } else {
              selectLocale = const Locale('pt', 'BR');
            }
            AppWidget.setLocale(context, selectLocale);
          });
        },
    );

  Widget get _signUp => widget.createTextWithButtonRedirect(
        labelTextButton: "sign_up".i18n(),
        labelTextDescription: "without_account".i18n(),
        onPressed: () {
            Modular.to.pushNamed('/sign-up/');
        }
  );
  
  Widget get _forgotPassword => widget.createTextWithButtonRedirect(
        labelTextButton: "forgot_password".i18n(),
        onPressed: () {
            Modular.to.pushNamed('/pwd-reset/');
        }
  );


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          _localeButton
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
            child: Column(
              children: [
                Observer(builder: (_) {
                  return Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [                        
                            pageTitle('app_name'.i18n(), 'sign_in'.i18n()),
                            const SizedBox(height: 20),
                            _username,
                            _password,
                            _loginButton,
                            const SizedBox(height: 50),
                            _signUp,
                            const SizedBox(height: 10),
                            _forgotPassword
                        ],
                      ),
                    ),
                  );
                }),
              ],
            ),
          ),
      ),
      
    );
  }
}
