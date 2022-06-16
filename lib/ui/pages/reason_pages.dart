import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setting_and_component/cubit/reason_list_tile_cubit.dart';
import 'package:setting_and_component/ui/pages/ask_for_ensurement_page.dart';
import 'package:setting_and_component/ui/widgets/reason_list_tile_widgets.dart';

import '../../shared/shared.dart';

class ReasonPage extends StatefulWidget {
  const ReasonPage({Key? key}) : super(key: key);

  @override
  State<ReasonPage> createState() => _ReasonPageState();
}

class _ReasonPageState extends State<ReasonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: SizeConfig.blockVertical(4)),
              child: Column(
                children: [
                  Container(
                    margin:
                        EdgeInsets.only(left: SizeConfig.blockHorizontal(3)),
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
                                  onPressed: () {},
                                  icon: const Icon(Icons.arrow_back)),
                            )),
                        SizedBox(
                          width: SizeConfig.blockHorizontal(4),
                        ),
                        Text(
                          "Delete Account",
                          style: black500TextStyle.copyWith(
                              fontWeight: bold700, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const Divider(),
                  Container(
                    margin:
                        EdgeInsets.only(left: SizeConfig.blockHorizontal(3)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tell us the reason:",
                          style:
                              grey500TextStyle.copyWith(fontWeight: regular400),
                        ),
                        const ReasonListTile(
                            deleteReason:
                                "I don’t use the app frequently enough."),
                        const ReasonListTile(
                            deleteReason: "I have a privacy concern."),
                        const ReasonListTile(
                            deleteReason:
                                "I don't understand how to use the app."),
                        const ReasonListTile(
                            deleteReason: "My account got hacked."),
                        const ReasonListTile(deleteReason: "Others.")
                      ],
                    ),
                  ),
                  BlocBuilder<ReasonListTileCubit, List<String>>(
                    builder: (context, state) {
                      if (state.isNotEmpty) {
                        if (state[0] == "Others.") {
                          return Container(
                            padding: EdgeInsets.only(
                                top: SizeConfig.blockVertical(2),
                                left: SizeConfig.blockHorizontal(4),
                                bottom: SizeConfig.blockVertical(2),
                                right: SizeConfig.blockHorizontal(4)),
                            decoration: BoxDecoration(
                                color: kWhite200,
                                borderRadius: BorderRadius.circular(12)),
                            margin: EdgeInsets.only(
                                right: SizeConfig.blockHorizontal(4),
                                left: SizeConfig.blockHorizontal(20)),
                            child: TextField(
                              cursorColor: kGrey500,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Write your reason",
                                  hintStyle:
                                      grey200TextStyle.copyWith(fontSize: 16)),
                            ),
                          );
                        }
                      }
                      return Container();
                    },
                  ),
                  SizedBox(
                    height: SizeConfig.blockVertical(20),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            height: SizeConfig.blockVertical(10),
                            width: SizeConfig.blockHorizontal(45),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: kWhite100,
                                  side: BorderSide(
                                      color: kPrimaryGreen500, width: 1),
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
                          SizedBox(
                            height: SizeConfig.blockVertical(10),
                            width: SizeConfig.blockHorizontal(45),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: kPrimaryGreen500,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18))),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    (MaterialPageRoute(
                                        builder: ((context) =>
                                            const EnsurementPage()))));
                              },
                              child: Text(
                                "Confirm",
                                style: white100TextStyle.copyWith(
                                    fontSize: 16, fontWeight: bold700),
                              ),
                            ),
                          ),
                        ]),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
