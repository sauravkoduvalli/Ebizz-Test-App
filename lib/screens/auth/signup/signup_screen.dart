import 'package:ebizz_infotech_project/main.dart';
import 'package:ebizz_infotech_project/utils/ui_helper.dart';
import 'package:ebizz_infotech_project/widgets/default_button.dart';
import 'package:ebizz_infotech_project/widgets/text_field_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final signupFormKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Signup"),
      //   automaticallyImplyLeading: false,
      // ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Form(
            key: signupFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Signup',
                  style: Theme.of(context).textTheme.headline1,
                ),
                UIHelper.verticalSpaceLarge(),
                // username field
                TextFieldWidget(
                  controller: emailController,
                  hintText: "Username",
                  icon: Icon(Icons.alternate_email_outlined, size: 20),
                  type: "string",
                  errorText: 'Enter valid email address',
                ),
                UIHelper.verticalSpaceMedium(),
                // password field
                TextFieldWidget(
                  controller: passController,
                  hintText: "Password",
                  icon: Icon(Icons.lock, size: 20),
                  type: "string",
                  errorText: 'Enter minimum 6 charecter password',
                  isPswd: true,
                ),
                // UIHelper.verticalSpaceMedium(),
                // // phone number field
                // TextFieldWidget(
                //   controller: phoneController,
                //   hintText: "Phone number",
                //   icon: Icon(Icons.phone_iphone_outlined, size: 20),
                //   type: "number",
                //   errorText: 'Enter valid phone number',
                // ),
                UIHelper.verticalSpaceLarge(),
                // signup button
                DefaultButton(
                  text: 'Signup',
                  color: Colors.purple,
                  onPress: () => signUp(),
                ),
                UIHelper.verticalSpaceLarge(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Text(
                        "Back to Login",
                        style: TextStyle(
                          fontFamily: 'ProximaNova',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signUp() async {
    final isValid = signupFormKey.currentState!.validate();
    if (!isValid) {
      return;
    }

    showDialog(
      context: context,
      builder: (context) => Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
      // Utils.showSnackBar(e.message);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}


