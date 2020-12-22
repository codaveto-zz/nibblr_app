import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.nonReactive(
      onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Container();
        },
        viewModelBuilder: () => HomeViewModel());
  }
}
