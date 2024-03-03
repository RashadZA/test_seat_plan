import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_seat_plan/seat_plan/controllers/seat_plan_controller.dart';
import 'package:test_seat_plan/seat_plan/widgets/seat_card.dart';

class LastRowWidget extends GetView<SeatPlanController> {
  const LastRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Obx(
          () => SizedBox(
        width: deviceWidth,
        child: controller.lastRow.value == 1
            ?  Row(
          children: [
            SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}1",
            ),
            const Spacer(),
          ],
        )
            : controller.lastRow.value == 2
            ?  Row(
          children: [
            SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}1",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}2",
            ),
          ],
        )
            : controller.lastRow.value == 3
            ? Row(
          children: [
             SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}1",
            ),
            SizedBox(
              width: controller.allColumnsIsEqual.isTrue && controller.rowGap.value != 0.0
                  ? controller.rowGap.value
                  : 10,
            ),
             SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}2",
            ),
            controller.allColumnsIsEqual.isFalse ? const Spacer() : controller.rowGap.value <
                controller.defaultRowGap.value
                ? const Spacer()
                : SizedBox(width: controller.rowGap.value),
             SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}3",
            ),
          ],
        )
            : controller.lastRow.value == 4
            ? Row(
          children: [
            SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}1",
            ),
            SizedBox(
              width: controller.allColumnsIsEqual.isTrue && controller.rowGap.value != 0.0
                  ? controller.rowGap.value
                  : 10,
            ),
             SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}2",
            ),
            controller.allColumnsIsEqual.isFalse ? const Spacer() : controller.rowGap.value <
                controller.defaultRowGap.value
                ? const Spacer()
                : SizedBox(width: controller.rowGap.value),
             SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}3",
            ),
            SizedBox(
              width: controller.allColumnsIsEqual.isTrue && controller.rowGap.value != 0.0
                  ? controller.rowGap.value
                  : 10,
            ),
             SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}4",
            ),
          ],
        )
            :  Row(
          children: [
            SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}1",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}2",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}3",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}4",
            ),
            const Spacer(),
            SeatCard(
              number: "${String.fromCharCode(controller.middleRow.toInt() + 66)}5",
            ),
          ],
        ),
      ),
    );
  }
}