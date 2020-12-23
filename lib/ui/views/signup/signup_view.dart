import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nibblr_app/ui/views/signup/signup_viewmodel.dart';
import 'package:nibblr_app/ui/widgets/gradient_background.dart';
import 'package:nibblr_app/util/config/validators.dart';
import 'package:nibblr_app/util/constants/sizes.dart';
import 'package:stacked/stacked.dart';


class SignupView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SignupViewModel>.nonReactive(
        onModelReady: (model) => model.initialise(),
        builder: (context, model, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
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
                                validator: buildEmailValidator(),
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
                                validator: buildPasswordValidator(),
                              ),
                              SizedBox(height: CustomSize.large + CustomSize.medium),
                              RaisedButton(
                                child: Text('Maak Account'),
                                onPressed: () {
                                  model.loginUser(
                                      email: model.emailController.text,
                                      password: model.passwordController.text,
                                      name: model.nameController.text);
                                },
                              ),
                              SizedBox(
                                height: CustomSize.medium,
                              ),
                              FlatButton(
                                  child: Text(
                                    'Inloggen',
                                    style: Get.textTheme.button.copyWith(color: Get.theme.primaryColor),
                                  ),
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
          );
        },
        viewModelBuilder: () => SignupViewModel());
  }

  TextStyle _inputStyle() => Get.textTheme.subtitle1.copyWith(color: Get.theme.primaryColor);
}
