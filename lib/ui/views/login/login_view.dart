import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:nibblr_app/ui/widgets/gradient_background.dart';
import 'package:nibblr_app/util/config/validators.dart';
import 'package:nibblr_app/util/constants/sizes.dart';
import 'package:progress_indicators/progress_indicators.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';


class LoginView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: LoadingOverlay(
              color: Colors.white,
              progressIndicator: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadingText(
                    'Logging in..',
                    style: Get.textTheme.headline6.copyWith(fontWeight: FontWeight.bold, color: Get.theme.primaryColor),
                  ),
                ],
              ),
              opacity: 1,
              isLoading: model.isBusy,
              child: SafeArea(
                child: GradientBackground(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: CustomSize.large + CustomSize.medium,
                        ),
                        Image(image: AssetImage('assets/images/slot.png')),
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
                                TextFormField
                                  (
                                  style: _inputStyle(),
                                  controller: model.emailController,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.mail_outline,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: 'Email'),
                                  validator: MinLengthValidator(1, errorText: 'Please fill in your email.'),
                                ),
                                SizedBox(
                                  height: CustomSize.medium,
                                ),
                                TextFormField(
                                  style: _inputStyle(),
                                  controller: model.passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      suffixIcon: Icon(
                                        Icons.lock_outline,
                                        color: Get.theme.primaryColor,
                                      ),
                                      labelText: 'Password'),
                                  validator: MinLengthValidator(1, errorText: 'Please fill in your password.'),
                                ),
                                SizedBox(height: CustomSize.large + CustomSize.medium),
                                RaisedButton(
                                    child: Text('Login'),
                                    onPressed: model.loginUser
                                ),
                                SizedBox(
                                  height: CustomSize.medium,
                                ),
                                FlatButton(

                                    child: Text(
                                      'Make Account',
                                      style: Get.textTheme.button.copyWith(color: Get.theme.primaryColor),
                                    ),
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onPressed: model.goToSignup)
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
        viewModelBuilder: () => LoginViewModel());
  }

  TextStyle _inputStyle() => Get.textTheme.subtitle1.copyWith(color: Get.theme.primaryColor);
}
