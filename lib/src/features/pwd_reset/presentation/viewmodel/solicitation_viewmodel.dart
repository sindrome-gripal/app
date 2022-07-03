import 'package:basearch/src/features/pwd_reset/domain/use_case/solicitation_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';


part 'solicitation_viewmodel.g.dart';


class SolicitationViewModel = _SolicitationViewModelBase with _$SolicitationViewModel;

abstract class _SolicitationViewModelBase with Store {
  final error = SolicitationError();
  final _usecase = Modular.get<PasswordSolicitationResetUseCase>();

  // flutter pub run build_runner build

  @observable
  String username = '';

  @observable
  bool isLoading = false;
  
  @observable
  bool solicitationOk = false;


   @action 
  void validateUsername() =>
    error.username = _usecase.validateUsername(username);
  

  void solicitation() async {
    error.clear();

    // validateUsername();
    // validatePassword();

    if (!error.hasErrors) {
      isLoading = true;
      try {
        await _usecase.solicitation(
            username, 
          );
        solicitationOk = true;
      } on Exception {
        error.username = 'Erro ao tentar criar usuário.';
        print('Erro ao tentar criar usuário.');
      } finally {
        isLoading = false;
      }
    }
  }
}



class SolicitationError = _SolicitationErrorBase with _$SolicitationError;

abstract class _SolicitationErrorBase with Store {

  @observable
  String? username;

  @computed
  bool get hasErrors => username != null;

  void clear() {
    username = null;
  }
}
