import 'package:ebizz_infotech_project/screens/auth/signup/signup_screen.dart';
import 'package:ebizz_infotech_project/screens/home/home_screen.dart';
import 'package:ebizz_infotech_project/utils/ui_helper.dart';
import 'package:ebizz_infotech_project/widgets/default_button.dart';
import 'package:ebizz_infotech_project/widgets/divider_widget.dart';
import 'package:ebizz_infotech_project/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // head text
              Text(
                'Login',
                style: Theme.of(context).textTheme.headline1,
              ),
              UIHelper.verticalSpaceLarge(),
              // username field
              TextFieldWidget(
                controller: emailController,
                hintText: "Username",
                icon: Icon(Icons.alternate_email_outlined, size: 20),
                type: "string",
              ),
              UIHelper.verticalSpaceMedium(),
              // password field
              TextFieldWidget(
                controller: passController,
                hintText: "Password",
                icon: Icon(Icons.lock, size: 20),
                type: "string",
              ),
              UIHelper.verticalSpaceSmall(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              // signup button
              DefaultButton(
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                text: 'Login',
                color: Colors.purple,
              ),
              UIHelper.verticalSpaceMedium(),
              // OR divider row
              OrDividerWidget(),
              UIHelper.verticalSpaceMedium(),
              // Login with phone number button
              InkWell(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const SignupScreen()),
                // ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 12,
                  ),
                  width: double.infinity,
                  height: 40.0,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.phone_iphone_outlined,
                        size: 20,
                      ),
                      UIHelper.horizontalSpaceSmall(),
                      Text(
                        "Login with Phone number",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpaceLarge(),
              // new user register link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "New to this app? ",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (ctx) => const SignupScreen()),
                    ),
                    child: const Text(
                      "Register",
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
    );
  }
}
