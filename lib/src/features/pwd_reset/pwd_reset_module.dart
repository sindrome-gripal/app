import 'package:basearch/src/features/pwd_reset/data/repository/confirmation_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'presentation/view/page/solicitation_page.dart';
import '../pwd_reset/data/repository/pwd_reset.dart';
import '../pwd_reset/data/repository/solicitation_repository.dart';
import '../pwd_reset/domain/repository/pwd_reset_interface.dart';
import '../pwd_reset/domain/use_case/confirm_usecase.dart';
import '../pwd_reset/domain/use_case/pwd_reset_usecase.dart';
import '../pwd_reset/domain/use_case/solicitation_usecase.dart';
import 'presentation/view/page/verification_page.dart';
import 'presentation/viewmodel/solicitation_viewmodel.dart';


class PasswordRecoveryModule extends Module {
    @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => SolicitationViewModel()),
        Bind.factory((i) => PasswordConfirmResetUseCase()),
        Bind.factory((i) => PasswordSolicitationResetUseCase()),
        Bind.factory((i) => PasswordResetUseCase()),
        Bind.factory<IPasswordReset>((i) => PasswordResetRepository()),
        Bind.factory<IConfirmPasswordReset>((i) => PasswordConfirmatitonResetRepository()),
        Bind.factory<ISolicitationPasswordReset>((i) => PasswordSolicitationResetRepository()),
      ];


  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const PasswordResetPage(), children: []),
        ChildRoute('/recovery-verification/', child: (_, __) => const VerificationtPage(), children: []),
      ];
}
