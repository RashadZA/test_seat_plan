import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_seat_plan/seat_plan/controllers/seat_plan_controller.dart';
import 'package:test_seat_plan/seat_plan/widgets/seat_card.dart';

class FirstRowWidget extends GetView<SeatPlanController> {
  const FirstRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Obx(
          () => SizedBox(
        width: deviceWidth,
        child: controller.firstRow.value == 1
            ? const Row(
          children: [
            SeatCard(
              number: "A1",
            ),
            Spacer(),
          ],
        )
            : controller.firstRow.value == 2
            ? const Row(
          children: [
            SeatCard(
              number: "A1",
            ),
            Spacer(),
            SeatCard(
              number: "A2",
            ),
          ],
        )
            : controller.firstRow.value == 3
            ? Row(
          children: [
            const SeatCard(
              number: "A1",
            ),
            controller.allColumnsIsEqual.isFalse ? const Spacer() : controller.rowGap.value <
                controller.defaultRowGap.value
                ? const Spacer()
                : SizedBox(width: controller.rowGap.value),
            const SeatCard(
              number: "A2",
            ),
            SizedBox(
              width: controller.allColumnsIsEqual.isTrue && controller.rowGap.value != 0.0
                  ? controller.rowGap.value
                  : 10,
            ),
            const SeatCard(
              number: "A3",
            ),
          ],
        )
            : controller.firstRow.value == 4 || controller.firstRow.value == 0
            ? Row(
          children: [
            const SeatCard(
              number: "A1",
            ),
            SizedBox(
              width: controller.allColumnsIsEqual.isTrue && controller.rowGap.value != 0.0
                  ? controller.rowGap.value
                  : 10,
            ),
            const SeatCard(
              number: "A2",
            ),
            controller.allColumnsIsEqual.isFalse ? const Spacer() : controller.rowGap.value <
                controller.defaultRowGap.value
                ? const Spacer()
                : SizedBox(width: controller.rowGap.value),
            const SeatCard(
              number: "A3",
            ),
            SizedBox(
              width: controller.allColumnsIsEqual.isTrue && controller.rowGap.value != 0.0
                  ? controller.rowGap.value
                  : 10,
            ),
            const SeatCard(
              number: "A4",
            ),
          ],
        )
            : const Row(
          children: [
            SeatCard(
              number: "A1",
            ),
            Spacer(),
            SeatCard(
              number: "A2",
            ),
            Spacer(),
            SeatCard(
              number: "A3",
            ),
            Spacer(),
            SeatCard(
              number: "A4",
            ),
            Spacer(),
            SeatCard(
              number: "A5",
            ),
          ],
        ),
      ),
    );
  }
}