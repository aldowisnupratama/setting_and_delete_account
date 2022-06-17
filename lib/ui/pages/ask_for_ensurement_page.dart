import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../shared/shared.dart';

class EnsurementPage extends StatelessWidget {
  const EnsurementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        backgroundColor: kWhite100,
        centerTitle: false,
        leading: Container(
            margin: EdgeInsets.all(SizeConfig.blockHorizontal(1.3)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: kGrey100, width: 1)),
            child: Center(
              child: IconButton(
                  color: kBlack600,
                  splashRadius: 26.0,
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
            )),
        title: Text(
          "Delete Account",
          style: black500TextStyle.copyWith(fontWeight: bold700, fontSize: 18),
        ),
      ),
      backgroundColor: kWhite100,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(top: SizeConfig.blockVertical(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: SizeConfig.blockVertical(20),
                    width: SizeConfig.blockVertical(20),
                    child: SvgPicture.asset(
                      "assets/svgs/warning.svg",
                    )),
                SizedBox(
                  height: SizeConfig.blockVertical(5),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: SizeConfig.blockHorizontal(5),
                      right: SizeConfig.blockHorizontal(5)),
                  child: Center(
                    child: Text(
                      "Are you sure want to delete account?",
                      textAlign: TextAlign.center,
                      style: black500TextStyle.copyWith(
                          fontSize: 20, fontWeight: bold700),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical(2),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(
                        left: SizeConfig.blockHorizontal(5),
                        right: SizeConfig.blockHorizontal(5)),
                    child: Text(
                      "Deleting your account will delete all your account and data. And can’t be recovered if you reactive this account in the future.",
                      style: grey600TextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical(5),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical(8),
                  width: SizeConfig.blockHorizontal(80),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: kRed500,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          (MaterialPageRoute(
                              builder: ((context) => const EnsurementPage()))));
                    },
                    child: Text(
                      "Confirm",
                      style: white100TextStyle.copyWith(
                          fontSize: 16, fontWeight: bold700),
                    ),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical(2),
                ),
                SizedBox(
                  height: SizeConfig.blockVertical(8),
                  width: SizeConfig.blockHorizontal(80),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: kWhite100,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18))),
                    onPressed: () {},
                    child: Text(
                      "Cancel",
                      style: primaryGreen500TextStyle.copyWith(
                          fontSize: 16, fontWeight: bold700),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
