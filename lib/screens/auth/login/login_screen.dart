import 'package:ebizz_infotech_project/screens/auth/signup/signup_screen.dart';
import 'package:ebizz_infotech_project/screens/home/home_screen.dart';
import 'package:ebizz_infotech_project/utils/ui_helper.dart';
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
              Text(
                'Welcome',
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
              UIHelper.verticalSpaceLarge(),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple,
                  ),
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              // OR divider row
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                      child: const Divider(
                        color: Colors.black,
                        height: 36,
                      ),
                    ),
                  ),
                  const Text("OR"),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                      child: const Divider(
                        color: Colors.black,
                        height: 36,
                      ),
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen())),
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
                      const Icon(Icons.phone_iphone_outlined, size: 20,),
                      UIHelper.horizontalSpaceSmall(),
                      Text(
                        "Login with Phone number",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
