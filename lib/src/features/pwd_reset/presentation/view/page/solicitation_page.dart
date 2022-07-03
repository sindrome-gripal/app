import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../common/form_text_field.dart';
import '../../viewmodel/solicitation_viewmodel.dart';


class PasswordResetPage extends StatefulWidget {
  const PasswordResetPage({ Key? key }) : super(key: key);

  @override
  State<PasswordResetPage> createState() => _PasswordResetPageState();
}


class _PasswordResetPageState extends ModularState<PasswordResetPage, SolicitationViewModel> {

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
        errorText: '', // store.error.username,
        onChange: (value) => store.username = value,
  );

  Widget get _recoveryPasswordButton => Container(
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
                store.solicitation();
                Future.delayed(const Duration(seconds: 5)).then((_) {
                  if(store.solicitationOk) {
                    print('solicitação ok');
                    Navigator.pop(context);
                    Modular.to.pushNamed('/');    
                  }
                  // solicitação fail
                  // Modular.to.pushNamed('/');
                });
              } 
            },
          child: Text('send'.i18n()),
        ),
  );


  Widget get _recoveryCodedButton => Container(
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
                  Navigator.pop(context);
                  Modular.to.pushNamed('/recovery-verification/');  
              } 
            },
          child: Text('send'.i18n()),
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
                    pageTitle('forgot_password'.i18n(), 'redefine_password'.i18n()),
                    const SizedBox(height: 30),
                    _username,
                    _recoveryPasswordButton,
                    _recoveryCodedButton
                  ],
                ),
              ),
            ]),
        ),
      ),
    );
  }
}
