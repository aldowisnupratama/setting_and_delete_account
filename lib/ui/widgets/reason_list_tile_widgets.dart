import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:setting_and_component/cubit/reason_list_tile_cubit.dart';

import '../../shared/shared.dart';

class ReasonListTile extends StatelessWidget {
  final String deleteReason;
  const ReasonListTile({Key? key, required this.deleteReason})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected =
        context.watch<ReasonListTileCubit>().isSelected(deleteReason);
    borderColor() {
      if (isSelected) {
        return kPrimaryGreen500;
      }
      return kGrey500;
    }

    childColor() {
      if (isSelected) {
        return kPrimaryGreen500;
      }
      return kWhite100;
    }

    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockVertical(2),
          bottom: SizeConfig.blockVertical(2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              context.read<ReasonListTileCubit>().selectReason(deleteReason);
            },
            child: Container(
              padding:
                  const EdgeInsets.only(top: 4, bottom: 4, right: 4, left: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: borderColor()),
              ),
              child: Container(
                width: 10,
                height: 10,
                decoration:
                    BoxDecoration(color: childColor(), shape: BoxShape.circle),
              ),
            ),
          ),
          SizedBox(
            width: SizeConfig.blockHorizontal(2),
          ),
          Text(
            deleteReason,
            style: black500TextStyle.copyWith(fontSize: 16),
          )
        ],
      ),
    );
  }
}
