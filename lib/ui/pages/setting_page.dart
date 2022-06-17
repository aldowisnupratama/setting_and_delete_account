import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:setting_and_component/ui/ui.dart';
import 'package:setting_and_component/ui/widgets/setting_tile.dart';
import 'package:setting_and_component/ui/widgets/setting_tile_single_line.dart';

import '../../shared/shared.dart';

class SettingPages extends StatelessWidget {
  const SettingPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: SizeConfig.blockVertical(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: SizeConfig.blockHorizontal(3)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: kGrey100, width: 1)),
                          child: Center(
                            child: IconButton(
                                splashRadius: 26.0,
                                iconSize: 30,
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_back)),
                          )),
                      SizedBox(
                        width: SizeConfig.blockHorizontal(4),
                      ),
                      Text(
                        "Setting",
                        style: black500TextStyle.copyWith(
                            fontWeight: bold700, fontSize: 18),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockHorizontal(3),
                      right: SizeConfig.blockHorizontal(3)),
                  child: Row(children: [
                    Container(
                      width: SizeConfig.blockHorizontal(20),
                      height: SizeConfig.blockVertical(9),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: kGrey100),
                    ),
                    Expanded(
                        child: Container(
                      margin:
                          EdgeInsets.only(left: SizeConfig.blockHorizontal(3)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ayu Laras",
                              style: black500TextStyle.copyWith(
                                  fontSize: 16, fontWeight: bold700),
                            ),
                            Text(
                              "Product Designer",
                              style: grey600TextStyle.copyWith(
                                  fontSize: 16, fontWeight: regular400),
                            )
                          ]),
                    )),
                    IconButton(
                      splashRadius: 20,
                      color: kBlack500,
                      icon: SvgPicture.asset(
                        "assets/icons/edit.svg",
                      ),
                      onPressed: () {},
                    ),
                  ]),
                ),
                Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockHorizontal(3),
                        right: SizeConfig.blockHorizontal(3)),
                    child: Divider()),
                Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.blockVertical(1),
                      left: SizeConfig.blockHorizontal(3)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Account",
                        style: grey500TextStyle.copyWith(
                            fontSize: 14, fontWeight: regular400),
                      ),
                      SettingTile(
                          title: "Delete Account",
                          subtitle: "Lorem Ipsum",
                          onPressed: () {
                            Navigator.push(
                                context,
                                (MaterialPageRoute(
                                    builder: (context) =>
                                        const DeleteAccountPage())));
                          }),
                      SettingTile(
                        title: "Change Number",
                        onPressed: () {},
                        subtitle: "Lorem Ipsum",
                      ),
                      const Divider()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.blockVertical(1),
                      left: SizeConfig.blockHorizontal(3)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Settings",
                        style: grey500TextStyle.copyWith(
                            fontSize: 14, fontWeight: regular400),
                      ),
                      SettingTile(
                        title: "Chat",
                        onPressed: () {},
                        subtitle: "Translation",
                      ),
                      SettingTile(
                        title: "Appearance",
                        onPressed: () {},
                        subtitle: "Dark mode, Chat Wallpaper, Language",
                      ),
                      SettingTile(
                        title: "Notifications",
                        onPressed: () {},
                        subtitle: "Chats, Group",
                      ),
                      const Divider(),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.blockVertical(0.5),
                      left: SizeConfig.blockHorizontal(3)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SettingTileSingleLine(
                        title: "Term & Condition",
                        onPressed: () {},
                      ),
                      SettingTileSingleLine(
                        title: "Rate Us",
                        onPressed: () {},
                      ),
                      const Divider()
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      bottom: SizeConfig.blockVertical(6),
                      top: SizeConfig.blockVertical(2),
                      left: SizeConfig.blockHorizontal(3)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "Sign Out",
                            style: primaryGreen500TextStyle.copyWith(
                                fontWeight: bold700, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockVertical(2),
                        ),
                        Text(
                          "Hi App Version 1.0.6",
                          style: grey300TextStyle.copyWith(
                              fontSize: 13, fontWeight: regular400),
                        ),
                        Text(
                          "Copyrights © 2021 PT Hello Kreasi Indonesia",
                          style: grey300TextStyle.copyWith(
                              fontSize: 13, fontWeight: regular400),
                        ),
                        Text(
                          "Version status: Up to date",
                          style: grey300TextStyle.copyWith(
                              fontSize: 13, fontWeight: regular400),
                        )
                      ]),
                ),
              ],
            ),
          )),
    );
  }
}
