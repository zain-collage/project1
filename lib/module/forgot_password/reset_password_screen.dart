import 'package:flutter/material.dart';
import 'package:project1/module/forgot_password/confirm_screen.dart';
import 'package:project1/shared/components/components.dart';
import 'package:project1/shared/components/size_config.dart';
import 'package:project1/shared/styes/colors.dart';

class ResetPasswordScreen extends StatelessWidget {
  static String routeName = "/resetPassword";
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(34)),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(height: getProportionateScreenHeight(38)),
                  Text(
                    "Reset Password",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(12)),
                  Text(
                    "Please enter your email to receive a \ncode to create a new password via email",
                    style: TextStyle(
                      fontSize: 14,
                      color: textColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: getProportionateScreenHeight(60)),
                  defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    label: "Email",
                    hintText: "Enter your Email Address",
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'pless enter your Email Address';
                      }
                      if (!value.contains('@')) {
                        return 'It must contain the @';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: getProportionateScreenHeight(38)),
                  defaultButton(
                    text: 'Send',
                    function: () {
                      //Todo:
                      // if()
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        ConfirmScreen.routeName,
                        (route) => false,
                        arguments: emailController.text,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
