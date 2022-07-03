import 'package:flutter_modular/flutter_modular.dart';

import 'domain/use_case/signup_usecase.dart';
import 'presentation/view/page/sign_up_page.dart';
import 'presentation/view/page/confirm_sign_up_page.dart';
import 'data/repository/signup_repository.dart';
import 'domain/repository/signup_interface.dart';
import 'presentation/viewmodel/signup_viewmodel.dart';


class SignUpModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => SignUpViewModel()),
        Bind.factory((i) => SignUpUseCase()),
        Bind.factory<ISignUp>((i) => SignUpRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => SignUpPage(), children: []),
        ChildRoute('/create-account-confirm/', child: (_, __) => SignUpConfirmPage(), children: []),
      ];
}
