import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/shared.dart';

class SettingTile extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Function onPressed;
  SettingTile(
      {Key? key, required this.title, this.subtitle, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.blockVertical(1),
      ),
      child: Material(
        color: kWhite100,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            onPressed();
          },
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: black500TextStyle.copyWith(
                          fontSize: 16, fontWeight: bold700),
                    ),
                    Text(
                      (subtitle ?? ""),
                      style: grey500TextStyle.copyWith(
                          fontSize: 16, fontWeight: regular400),
                    )
                  ],
                ),
                IconButton(
                    splashRadius: 30,
                    onPressed: () {
                      onPressed();
                    },
                    icon: SvgPicture.asset("assets/icons/arrow_right.svg"))
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
