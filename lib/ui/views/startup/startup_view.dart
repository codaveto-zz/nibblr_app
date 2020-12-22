import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends StatelessWidget {
  const StartupView({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.nonReactive(
      onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Color(0xf5f5f5),
            body: Center(
              child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.black),),
            ),
          );
        },
        viewModelBuilder: () => StartupViewModel());
  }
}
