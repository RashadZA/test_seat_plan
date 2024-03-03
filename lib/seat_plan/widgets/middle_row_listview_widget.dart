import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_seat_plan/seat_plan/controllers/seat_plan_controller.dart';
import 'package:test_seat_plan/seat_plan/widgets/seat_card.dart';

class MiddleRowsListViewWidget extends GetView<SeatPlanController> {
  const MiddleRowsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount:
          controller.middleRow.value != 0 && controller.columns.value != 0
              ? controller.middleRow.value.toInt()
              : 0,
          itemBuilder: (context, index) {
            return Column(
              children: [
                 MiddleRow(index: index,),
                SizedBox(
                  height: controller.middleRow.value != index + 1 ? 10 : 0.0,
                )
              ],
            );
          }),
    );
  }
}

class MiddleRow extends GetView<SeatPlanController> {
   final int index;
  const MiddleRow( {super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Obx(
          () => SizedBox(
        width: deviceWidth,
        child: controller.columns.value == 1
            ?  Row(
          children: [
            SeatCard(
              number: "${String.fromCharCode(index + 66)}1",
            ),
            const Spacer(),
          ],
        )
            : controller.columns.value == 2
            ?  Row(
          children: [
            SeatCard(
              number: "${String.fromCharCode(index + 66)}1",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(index + 66)}2",
            ),
          ],
        )
            : controller.columns.value == 3
            ? Row(
          children: [
             SeatCard(
              number: "${String.fromCharCode(index + 66)}1",
            ),
            SizedBox(
              width: controller.rowGap.value != 0.0
                  ? controller.rowGap.value
                  : 10,
            ),
             SeatCard(
              number: "${String.fromCharCode(index + 66)}2",
            ),
            controller.rowGap.value <
                controller.defaultRowGap.value
                ? const Spacer()
                : SizedBox(width: controller.rowGap.value),
             SeatCard(
              number: "${String.fromCharCode(index + 66)}3",
            ),
          ],
        )
            : controller.columns.value == 4
            ? Row(
          children: [
             SeatCard(
              number: "${String.fromCharCode(index + 66)}1",
            ),
            SizedBox(
              width: controller.rowGap.value != 0.0
                  ? controller.rowGap.value
                  : 10,
            ),
             SeatCard(
              number: "${String.fromCharCode(index + 66)}2",
            ),
            controller.rowGap.value <
                controller.defaultRowGap.value
                ? const Spacer()
                : SizedBox(width: controller.rowGap.value),
            SeatCard(
              number: "${String.fromCharCode(index + 66)}3",
            ),
            SizedBox(
              width: controller.rowGap.value != 0.0
                  ? controller.rowGap.value
                  : 10,
            ),
            SeatCard(
              number: "${String.fromCharCode(index + 66)}4",
            ),
          ],
        )
            :  Row(
          children: [
            SeatCard(
              number: "${String.fromCharCode(index + 66)}1",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(index + 66)}2",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(index + 66)}3",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(index + 66)}4",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(index + 66)}5",
            ),
          ],
        ),
      ),
    );
  }
}