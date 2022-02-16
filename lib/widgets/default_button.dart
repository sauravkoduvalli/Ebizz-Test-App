import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPress;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
        child: Text(text),
        onPressed: () => onPress(),
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => const LoginScreen()),
        // );
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        ),
      ),
    );
  }
}
