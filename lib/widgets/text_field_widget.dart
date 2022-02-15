import 'package:ebizz_infotech_project/utils/ui_helper.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  final String userName;
  final TextEditingController textController = TextEditingController();
  final IconData icon;
  final String type;
  final bool isPassword;

  TextFieldWidget({
    Key? key,
    required this.userName,
    required this.icon,
    required this.type,
    required this.isPassword,
  }) : super(key: key);

  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 50,
      padding: const EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1.5),
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      ),
      child: Row(
        children: [
          Icon(widget.icon),
          UIHelper.horizontalSpaceSmall(),
          TextField(
            controller: widget.textController,
            keyboardType: widget.type == "string"
                ? TextInputType.text
                : TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.userName,
            ),
            obscureText: widget.isPassword,
          ),
        ],
      ),
    );
  }
}
