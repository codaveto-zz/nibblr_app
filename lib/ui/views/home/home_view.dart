import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:nibblr_app/ui/widgets/gradient_background.dart';
import 'package:nibblr_app/util/constants/sizes.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.white),
              actions: [
                IconButton(
                  icon: Icon(Icons.refresh),
                  onPressed: model.refresh,
                ),
                IconButton(
                  icon: Icon(Icons.logout),
                  onPressed: model.logout,
                ),
              ],
              title: Text(
                'Dinners',
                style: TextStyle(color: Colors.white),
              ),
            ),
            drawer: Theme(
              data: Get.theme.copyWith(canvasColor: Colors.lightBlueAccent),
              child: Drawer(
                elevation: 1,
                child: ListView(
                  children: [
                    DrawerHeader(
                      child: Text(
                        'Mogguh',
                        style: Get.textTheme.headline3.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.food_bank,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: CustomSize.medium,
                          ),
                          Text(
                            'Create Dinner',
                            style: Get.textTheme.headline6.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      onTap: model.makeDinner,
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          Icon(
                            Icons.account_circle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: CustomSize.medium,
                          ),
                          Text(
                            'Profile',
                            style: Get.textTheme.headline6.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.white,
            body: LoadingOverlay(
              color: Colors.white,
              progressIndicator: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                ],
              ),
              opacity: 1,
              isLoading: model.isBusy,
              child: SafeArea(
                child: GradientBackground(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          onTap: model.dinnerTapped,
                          child: ListTile(
                            title: Text(
                              'wtf',
                              style: Get.textTheme.subtitle2,
                            ),
                          ),
                        );
                      },
                      physics: BouncingScrollPhysics(),
                      separatorBuilder: (context, index) {
                        return index < model.dinners?.length ?? 0 - 1 ? Divider() : SizedBox.shrink();
                      },
                      itemCount: model.dinners?.length ?? 0),
                ),
              ),
            ),
          );
        },
        viewModelBuilder: () => HomeViewModel());
  }
}
