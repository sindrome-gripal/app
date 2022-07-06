import 'package:basearch/src/common/form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../viewmodel/covid_data_viewmodel.dart';


class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends ModularState<HomeBody, CovidDataViewModel> {  

  Widget get _getDataButton => Container(
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
                store.get();
                Future.delayed(const Duration(seconds: 6)).then((_) {
                    print(store.data);
                });
              } 
            },
          child: Text(store.data.toString()),
        ),
      );


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Dados',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
              ),
            ),
            _getDataButton,
          ],
        ),
      ),
    );
  }
}
