import 'package:basearch/src/features/home/domain/repository/covid_data_interface.dart';
import 'package:basearch/src/features/home/domain/usecase/covid_data_usecase.dart';
import 'package:basearch/src/features/home/presentation/viewmodel/covid_data_viewmodel.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'data/repository/covid_data_repository.dart';
import 'presentation/view/page/home_page.dart';
import 'presentation/view/page/profile_page.dart';


class HomeModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => CovidDataViewModel()),
        Bind.factory((i) => CovidDataUseCase()),
        Bind.factory<ICovidData>((i) => RequestCasesRepository()),
  ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage(), children: []),
        ChildRoute('/profile', child: (_, __) => const ProfilePage(), children: []),
      ];
}
