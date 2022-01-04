import 'package:flutter/material.dart';

enum ButtonType { normal, outline, text }

class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final bool loading;
  final bool disabled;
  final ButtonType type;
  final Color? color;
  final Widget? icon;

  AppButton(
    this.text, {
    Key? key,
    this.onPressed,
    this.color,
    this.icon,
    this.loading = false,
    this.disabled = false,
    this.type = ButtonType.normal,
  }) : super(key: key);

  Widget _buildLoading() {
    if (!loading) return Container();
    return Container(
      margin: EdgeInsets.only(left: 8, right: 8),
      width: 14,
      height: 14,
      child: CircularProgressIndicator(strokeWidth: 1.5),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case ButtonType.outline:
        Widget button = OutlinedButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              BorderSide(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          onPressed: disabled ? null : onPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text(text), _buildLoading()],
          ),
        );
        if (icon != null) {
          button = OutlinedButton.icon(
            style: ButtonStyle(
              side: MaterialStateProperty.all(
                BorderSide(
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            onPressed: disabled ? null : onPressed,
            icon: icon ?? const Icon(Icons.edit),
            label: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text(text), _buildLoading()],
            ),
          );
        }
        return button;

      case ButtonType.text:
        Widget button = TextButton(
          onPressed: disabled ? null : onPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text(text), _buildLoading()],
          ),
        );
        if (icon != null) {
          button = TextButton.icon(
            onPressed: disabled ? null : onPressed,
            icon: icon ?? const Icon(Icons.edit),
            label: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text(text), _buildLoading()],
            ),
          );
        }
        return button;
      default:
        Widget button = ElevatedButton(
          onPressed: disabled ? null : onPressed,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(color: Colors.white),
              ),
              _buildLoading()
            ],
          ),
        );
        if (icon != null) {
          button = ElevatedButton.icon(
            onPressed: disabled ? null : onPressed,
            icon: icon ?? const Icon(Icons.edit),
            label: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: Colors.white),
                ),
                _buildLoading()
              ],
            ),
          );
        }
        return ConstrainedBox(
          constraints: BoxConstraints.tightFor(height: 48),
          child: button,
        );
    }
  }
}
