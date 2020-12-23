import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:nibblr_app/ui/widgets/gradient_background.dart';
import 'package:nibblr_app/util/constants/sizes.dart';
import 'package:stacked/stacked.dart';
import 'package:intl/intl.dart';

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
                'Home of the Dinners',
                style: TextStyle(color: Colors.white),
              ),
            ),
            drawer: Theme(
              data: Get.theme.copyWith(canvasColor: Get.theme.primaryColor.withBlue(40)),
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
                      onTap: model.goToDinnerView,
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
                    valueColor: AlwaysStoppedAnimation<Color>(Get.theme.primaryColor),
                  ),
                ],
              ),
              opacity: 1,
              isLoading: model.isBusy,
              child: SafeArea(
                child: GradientBackground(
                  child: (model.dinners != null && model.dinners.length > 0)
                      ? Padding(
                        padding: const EdgeInsets.only(top: CustomSize.medium),
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              final dinner = model.dinners[index];
                              return GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: () {
                                  model.dinnerTapped(dinner);
                                },
                                child: ListTile(
                                  title: Text(
                                    dinner.title,
                                    overflow: TextOverflow.ellipsis,
                                    style: Get.textTheme.subtitle1,
                                  ),
                                  subtitle: Text(
                                      dinner.description + '\n' + DateFormat('dd MMM yyyy - hh:mm').format(dinner.startTime),
                                    overflow: TextOverflow.ellipsis,
                                    style: Get.textTheme.subtitle2,
                                  ),
                                  isThreeLine: true,
                                  dense: true,
                                  leading: Icon(Icons.food_bank_outlined),
                                  trailing: Icon(Icons.arrow_right),
                                ),
                              );
                            },
                            physics: BouncingScrollPhysics(),
                            separatorBuilder: (context, index) {
                              return index < model.dinners?.length ?? 0 - 1 ? Divider() : SizedBox.shrink();
                            },
                            itemCount: model.dinners?.length ?? 0),
                      )
                      : Center(
                          child: Text(
                            'A dinner a day,\n'
                                'keeps the hunger away.',
                            textAlign: TextAlign.center,
                            style: Get.textTheme.subtitle1.copyWith(fontStyle: FontStyle.italic),
                          ),
                        ),
                ),
              ),
            ),
          );
        },
        viewModelBuilder: () => HomeViewModel());
  }
}
