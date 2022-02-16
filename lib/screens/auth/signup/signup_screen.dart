import 'package:ebizz_infotech_project/screens/auth/login/login_screen.dart';
import 'package:ebizz_infotech_project/screens/home/home_screen.dart';
import 'package:ebizz_infotech_project/utils/ui_helper.dart';
import 'package:ebizz_infotech_project/widgets/default_button.dart';
import 'package:ebizz_infotech_project/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              ),
              UIHelper.verticalSpaceMedium(),
              // password field
              TextFieldWidget(
                controller: passController,
                hintText: "Password",
                icon: Icon(Icons.lock, size: 20),
                type: "string",
              ),
              UIHelper.verticalSpaceMedium(),
              // phone number field
              TextFieldWidget(
                controller: phoneController,
                hintText: "Phone number",
                icon: Icon(Icons.phone_iphone_outlined, size: 20),
                type: "number",
              ),
              UIHelper.verticalSpaceLarge(),
              // signup button
              DefaultButton(
                text: 'Signup',
                color: Colors.purple,
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
              UIHelper.verticalSpaceExtraLarge(),
              // OR divider row
              // Row(
              //   children: <Widget>[
              //     Expanded(
              //       child: Container(
              //         margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              //         child: const Divider(
              //           color: Colors.black,
              //           height: 36,
              //         ),
              //       ),
              //     ),
              //     const Text("OR"),
              //     Expanded(
              //       child: Container(
              //         margin: const EdgeInsets.only(left: 20.0, right: 10.0),
              //         child: const Divider(
              //           color: Colors.black,
              //           height: 36,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // UIHelper.verticalSpaceMedium(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
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
    );
  }
}
