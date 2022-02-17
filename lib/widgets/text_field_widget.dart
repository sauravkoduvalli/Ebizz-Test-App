import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.icon,
    required this.type,
    this.isPswd = false,
    required this.errorText,
  }) : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final Icon icon;
  final bool isPswd;
  final String type;
  final String errorText;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.isPswd,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) {
          if (value!.isEmpty) {
            return widget.errorText;
          } else if (widget.isPswd == true && value.length < 6) {
            return widget.errorText;
          } else {
            return null;
          }
        },
        // textInputAction: TextInputAction.next,
        keyboardType: widget.type == "string"
            ? TextInputType.emailAddress
            : TextInputType.numberWithOptions(),
        decoration: InputDecoration(
          icon: widget.icon,
          // border: OutlineInputBorder(),
          labelText: widget.hintText,
        ),
      ),
    );
  }
}
