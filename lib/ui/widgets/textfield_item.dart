import 'package:estetica_app/ui/util/colors.dart';
import 'package:estetica_app/ui/util/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldItem extends StatefulWidget {
  const TextFieldItem(
      {Key? key, required this.text, this.suffixIcon, this.onPressed})
      : super(key: key);
  final String text;
  final IconData? suffixIcon;
  final Function()? onPressed;
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
            focusNode: focus,
            cursorColor: primaryColor,
            decoration: InputDecoration(
              suffixIcon: widget.suffixIcon != null
                  ? CupertinoButton(
                      child: Icon(
                        widget.suffixIcon,
                        color: focus.hasFocus ? primaryColor : greyColor,
                      ),
                      onPressed: widget.onPressed)
                  : null,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
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
