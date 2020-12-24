import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:nibblr_app/ui/widgets/gradient_background.dart';
import 'package:nibblr_app/util/config/validators.dart';
import 'package:nibblr_app/util/constants/sizes.dart';
import 'package:nibblr_app/util/methods/input.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:stacked/stacked.dart';

import 'add_dinner_viewmodel.dart';

class AddDinnerView extends StatelessWidget {
  const AddDinnerView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AddDinnerViewModel>.reactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: model.goBack,
              ),
              iconTheme: IconThemeData(color: Colors.white),
              title: Text(
                'Create Dinner',
                style: TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: Colors.white,
            body: LoadingOverlay(
              color: Colors.white,
              progressIndicator: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadingText(
                    'Creating dinner..',
                    style: Get.textTheme.headline6.copyWith(fontWeight: FontWeight.bold, color: Get.theme.primaryColor),
                  ),
                ],
              ),
              opacity: 1,
              isLoading: model.isBusy,
              child: GradientBackground(
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(CustomSize.large),
                          child: Form(
                            key: model.formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                TextFormField(
                                  style: inputStyle(),
                                  controller: model.titleController,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.assistant_photo,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: 'Title'),
                                  validator: buildMinTextValidator('Please enter a title'),
                                ),
                                SizedBox(
                                  height: CustomSize.medium,
                                ),
                                TextFormField(
                                  style: inputStyle(),
                                  controller: model.descriptionController,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.assignment_outlined,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: 'Description'),
                                  validator: buildMinTextValidator('Please enter a description'),
                                ),
                                SizedBox(
                                  height: CustomSize.medium,
                                ),
                                TextFormField(
                                  style: inputStyle(),
                                  controller: model.maxGuestController,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.accessibility_new_outlined,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: '# Guests'),
                                  keyboardType: TextInputType.number,
                                  validator: buildMinTextValidator('Please enter the number of guests'),
                                  inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                                ),
                                SizedBox(
                                  height: CustomSize.medium,
                                ),
                                TextFormField(
                                  style: inputStyle(),
                                  readOnly: true,
                                  onTap: model.pickStartTime,
                                  controller: model.startTimeController,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.watch_later_outlined,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: 'Start'),
                                  validator: buildMinTextValidator('Please select a start date'),
                                ),
                                SizedBox(
                                  height: CustomSize.medium,
                                ),
                                TextFormField(
                                  style: inputStyle(),
                                  readOnly: true,
                                  onTap: model.pickEndTime,
                                  controller: model.endTimeController,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.watch_later,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: 'End'),
                                  validator: buildMinTextValidator('Please select an end date'),
                                ),
                                SizedBox(height: CustomSize.large + CustomSize.medium),
                                RaisedButton(
                                  child: Text('Create Dinner'),
                                  onPressed: model.createDinner,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        viewModelBuilder: () => AddDinnerViewModel());
  }
}
