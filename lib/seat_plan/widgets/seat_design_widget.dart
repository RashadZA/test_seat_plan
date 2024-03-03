import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_seat_plan/seat_plan/controllers/seat_plan_controller.dart';
import 'package:test_seat_plan/seat_plan/widgets/first_row_widget.dart';
import 'package:test_seat_plan/seat_plan/widgets/last_row_widget.dart';
import 'package:test_seat_plan/seat_plan/widgets/middle_row_listview_widget.dart';

class SeatDesignWidget extends GetView<SeatPlanController> {
  const SeatDesignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "Design",
          style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: deviceWidth,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Column(
            children: [
              // Row(children: [
              //   Spacer(),
              //   CircleAvatar(
              //     foregroundImage: AssetImage('assets/steering.png'),
              //     radius: 40,
              //   )
              // ],),
              SizedBox(
                height: 10,
              ),
              FirstRowWidget(),
              SizedBox(
                height: 10,
              ),
              MiddleRowsListViewWidget(),
              SizedBox(
                height: 10,
              ),
              LastRowWidget(),
            ],
          ),
        )
      ],
    );
  }
}






