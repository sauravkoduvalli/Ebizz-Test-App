import 'package:ebizz_infotech_project/screens/auth/login/login_screen.dart';
import 'package:ebizz_infotech_project/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
              SizedBox(
                height: 50,
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.alternate_email_outlined,
                      size: 20,
                    ),
                    // border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              SizedBox(
                height: 50,
                child: TextField(
                  controller: passController,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      size: 20,
                    ),
                    // border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              SizedBox(
                height: 50,
                child: TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                    icon: Icon(
                      Icons.phone_iphone_outlined,
                      size: 20,
                    ),
                    // border: OutlineInputBorder(),
                    labelText: 'Phone Number',
                  ),
                ),
              ),
              // UIHelper.verticalSpaceMedium(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.end,
              //   children: const [
              //     Text(
              //       "Forgot Password?",
              //       style: TextStyle(
              //         color: Colors.purple,
              //       ),
              //     ),
              //   ],
              // ),
              UIHelper.verticalSpaceExtraLarge(),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Signup'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                ),
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
