import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_seat_plan/core/utils/app_colors.dart';
import 'package:test_seat_plan/core/widgets/core_button.dart';
import 'package:test_seat_plan/core/widgets/input_text_field.dart';
import 'package:test_seat_plan/seat_plan/controllers/seat_plan_controller.dart';
import 'package:test_seat_plan/seat_plan/widgets/data_taking_fields.dart';
import 'package:test_seat_plan/seat_plan/widgets/seat_card.dart';
import 'package:test_seat_plan/seat_plan/widgets/seat_design_widget.dart';

class SeatPlanView extends GetView<SeatPlanController> {
  const SeatPlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: const Text("Seat Plan"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const DataTakingFields(),
            const SeatDesignWidget(),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}
