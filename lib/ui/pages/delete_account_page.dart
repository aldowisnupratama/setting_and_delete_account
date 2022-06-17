import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:setting_and_component/shared/shared.dart';

import 'package:setting_and_component/ui/widgets/dialog_widgets.dart';

class DeleteAccountPage extends StatefulWidget {
  const DeleteAccountPage({Key? key}) : super(key: key);

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState extends State<DeleteAccountPage> {
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.4,
        backgroundColor: kWhite100,
        centerTitle: false,
        leading: Container(
            margin: EdgeInsets.all(SizeConfig.blockHorizontal(1.4)),
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
          "Setting",
          style: black500TextStyle.copyWith(fontWeight: bold700, fontSize: 18),
        ),
      ),
      backgroundColor: kWhite100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: EdgeInsets.only(
            top: SizeConfig.blockVertical(3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockHorizontal(3),
                    right: SizeConfig.blockHorizontal(3)),
                padding: EdgeInsets.only(
                    top: SizeConfig.blockVertical(3),
                    left: SizeConfig.blockHorizontal(8),
                    right: SizeConfig.blockHorizontal(2),
                    bottom: SizeConfig.blockVertical(3)),
                decoration: BoxDecoration(
                    color: kWhite300, borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: SizeConfig.blockVertical(10),
                        width: SizeConfig.blockVertical(10),
                        child: SvgPicture.asset(
                          "assets/svgs/warning_a.svg",
                        )),
                    SizedBox(
                      height: SizeConfig.blockVertical(2),
                    ),
                    Text(
                      "Delete your account will:",
                      style: red500TextStyle.copyWith(
                          fontSize: 20, fontWeight: regular400),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: SizeConfig.blockVertical(2),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.blockVertical(1)),
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kGrey600),
                          ),
                          Text(
                            "Delete all your account and data.",
                            style: grey600TextStyle.copyWith(
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: SizeConfig.blockVertical(2),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.blockVertical(1)),
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kGrey600),
                          ),
                          Text(
                            "Erase all your message history.",
                            style: grey600TextStyle.copyWith(fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: SizeConfig.blockVertical(2),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                right: SizeConfig.blockVertical(1)),
                            width: 4,
                            height: 4,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kGrey600),
                          ),
                          Text(
                            "Disconnect you from all Hi App chats.",
                            style: grey600TextStyle.copyWith(fontSize: 16),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.blockVertical(2),
                    left: SizeConfig.blockHorizontal(3),
                    right: SizeConfig.blockHorizontal(3)),
                child: Text(
                  "Enter your phone number with country, to delete your account",
                  style: grey600TextStyle.copyWith(
                      fontWeight: regular400, fontSize: 14),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: kWhite200),
                margin: EdgeInsets.only(
                    top: SizeConfig.blockVertical(2),
                    left: SizeConfig.blockHorizontal(3),
                    right: SizeConfig.blockHorizontal(3)),
                padding: const EdgeInsets.only(
                    top: 8, left: 15, right: 15, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 10),
                      width: 30,
                      height: 30,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/3.0x/id-flag.png"))),
                    ),
                    Text(
                      "+62",
                      style: black500TextStyle.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '|',
                      style: grey500TextStyle.copyWith(fontSize: 19),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextField(
                        controller: phoneNumberController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Eg. 82179410063",
                            hintStyle: grey200TextStyle.copyWith(
                                fontSize: 16, fontWeight: regular400)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.blockVertical(2),
                    left: SizeConfig.blockHorizontal(3),
                    right: SizeConfig.blockHorizontal(3)),
                width: double.infinity,
                height: SizeConfig.blockVertical(7),
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     (MaterialPageRoute(
                    //         builder: (_) => DeleteAccountDialog())));

                    showDialog(
                        context: context,
                        builder: (context) {
                          return const CostumeDialogWidget();
                        });
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: kGrey200,
                      primary: kRed600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Center(
                      child: Text(
                    "Confirm",
                    style: white100TextStyle,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
