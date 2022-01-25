import 'package:flutter/material.dart';

class AppHeadlineTitle extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final Widget? leading;
  final VoidCallback? onPressed;
  final TextStyle? textStyle;

  AppHeadlineTitle({
    Key? key,
    required this.title,
    this.trailing,
    this.leading,
    this.onPressed,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              leading ?? Container(),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  title,
                  style: textStyle ?? Theme.of(context).textTheme.headline6,
                ),
              )
            ],
          ),
          trailing ?? Container()
        ],
      ),
    );
  }
}
