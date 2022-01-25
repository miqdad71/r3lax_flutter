import 'package:flutter/material.dart';
import '../models/model.dart';
import '../widgets/widget.dart';

class HomeMenu extends StatelessWidget {
  final String? title;
  final VoidCallback? onPressed;
  final String imgurl;

  HomeMenu({
    Key? key,
    this.title,
    this.onPressed,
    required this.imgurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed ?? () {},
      child: Column(
        children: [
          Image.asset(
            imgurl,
            width: 72.0,
          ),
          Container(
            width: 72.0,
            child: Text(
              title!,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
