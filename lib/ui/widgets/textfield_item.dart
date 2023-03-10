import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldItem extends StatefulWidget {
  const TextFieldItem(
      {Key? key,
      required this.text,
      this.suffixIcon,
      this.onPressed,
      this.onChanged,
      this.onTap,
      this.controller,
      this.readOnly = false,
      this.obscureText = false})
      : super(key: key);
  final String text;
  final IconData? suffixIcon;
  final Function()? onPressed;
  final bool obscureText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final bool readOnly;
  final TextEditingController? controller;

  @override
  State<TextFieldItem> createState() => _TextFieldItemState();
}

class _TextFieldItemState extends State<TextFieldItem> {
  final focus = FocusNode();
  @override
  void initState() {
    focus.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.controller?.dispose();
    focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: TextStyle(
                color: focus.hasFocus ? primaryColor : greyColor,
                fontSize: responsive.dp(2.5)),
          ),
          const SizedBox(height: 10),
          TextField(
            controller: widget.controller,
            onTap: widget.onTap,
            readOnly: widget.readOnly,
            onChanged: widget.onChanged,
            style: TextStyle(fontSize: responsive.dp(2)),
            obscureText: widget.obscureText,
            focusNode: focus,
            cursorColor: primaryColor,
            decoration: InputDecoration(
              suffixIcon: widget.suffixIcon != null
                  ? CupertinoButton(
                      onPressed: widget.onPressed,
                      child: Icon(
                        widget.suffixIcon,
                        color: focus.hasFocus ? primaryColor : greyColor,
                      ),
                    )
                  : null,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 22, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: greyColor, width: 2),
                  borderRadius: BorderRadius.circular(20)),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: primaryColor, width: 2),
                  borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );
  }
}
