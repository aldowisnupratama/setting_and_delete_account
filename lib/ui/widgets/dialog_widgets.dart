// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:setting_and_component/ui/pages/reason_pages.dart';
import 'package:setting_and_component/ui/ui.dart';

import '../../shared/shared.dart';

class CostumeDialogWidget extends StatelessWidget {
  const CostumeDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18),
              topRight: const Radius.circular(18))),
      title: Container(
        decoration: BoxDecoration(
          color: kWhite100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: kGrey100, width: 1)),
                  child: Center(
                    child: IconButton(
                        splashRadius: 10.0,
                        iconSize: 20,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close_rounded)),
                  )),
            ),
            SizedBox(
              height: SizeConfig.blockVertical(2),
            ),
            Text(
              "Phone number doesn’t match",
              style:
                  black500TextStyle.copyWith(fontSize: 20, fontWeight: bold700),
            ),
            Text(
              "Phone number doesn’t match The phone number you have entered doesn’t match your account. Please enter the number correctly.",
              style: grey600TextStyle.copyWith(fontSize: 16),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: SizeConfig.blockVertical(4),
                  left: SizeConfig.blockHorizontal(3),
                  right: SizeConfig.blockHorizontal(3)),
              width: double.infinity,
              height: SizeConfig.blockVertical(7),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      (MaterialPageRoute(
                          builder: ((context) => const ReasonPageOptional()))));
                },
                style: TextButton.styleFrom(
                    backgroundColor: kPrimaryGreen500,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Center(
                    child: Text(
                  "OK",
                  style: white100TextStyle.copyWith(
                      fontSize: 16, fontWeight: bold700),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
