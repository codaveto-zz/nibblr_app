import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:nibblr_app/ui/widgets/gradient_background.dart';
import 'package:nibblr_app/util/config/validators.dart';
import 'package:nibblr_app/util/constants/sizes.dart';
import 'package:nibblr_app/util/methods/input.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:stacked/stacked.dart';

import 'signup_viewmodel.dart';

class SignupView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.reactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: LoadingOverlay(
              color: Colors.white,
              progressIndicator: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadingText(
                    'Creating account..',
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
                        SizedBox(
                          height: CustomSize.large + CustomSize.medium,
                        ),
                        Image(image: AssetImage('assets/images/sleutel.png')),
                        SizedBox(
                          height: CustomSize.large,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: CustomSize.large),
                          child: Form(
                            key: model.formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                TextFormField(
                                  style: inputStyle(),
                                  controller: model.nameController,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.account_circle,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: 'Name'),
                                  validator: buildLongTextValidator(),
                                ),
                                SizedBox(
                                  height: CustomSize.medium,
                                ),
                                TextFormField(
                                  style: inputStyle(),
                                  controller: model.emailController,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.mail_outline,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: 'Email'),
                                  validator: buildEmailValidator(),
                                ),
                                SizedBox(
                                  height: CustomSize.medium,
                                ),
                                TextFormField(
                                  style: inputStyle(),
                                  controller: model.passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.lock_outline,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: 'Password'),
                                  validator: buildPasswordValidator(),
                                ),
                                SizedBox(height: CustomSize.large + CustomSize.medium),
                                RaisedButton(
                                  child: Text('Make Account'),
                                  onPressed: model.createUser,
                                ),
                                SizedBox(
                                  height: CustomSize.medium,
                                ),
                                FlatButton(
                                    child: Text(
                                      'Login',
                                      style: Get.textTheme.button.copyWith(color: Get.theme.primaryColor),
                                    ),
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onPressed: model.goToSignup),
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
        viewModelBuilder: () => SignupViewModel());
  }
}
