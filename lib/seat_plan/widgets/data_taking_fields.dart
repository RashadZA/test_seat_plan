import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_seat_plan/core/utils/validator.dart';
import 'package:test_seat_plan/core/widgets/core_button.dart';
import 'package:test_seat_plan/core/widgets/input_text_field.dart';
import 'package:test_seat_plan/seat_plan/controllers/seat_plan_controller.dart';

class DataTakingFields extends GetView<SeatPlanController> {
  const DataTakingFields({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: deviceWidth,
        child: Form(
          key: controller.signInFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFieldInput(
                    hintText: "First Row",
                    fieldTitleText: "First Row",
                    textFieldWidth: deviceWidth * 0.4,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    validator: Validator.rowValidator,
                    controller: controller.firstRowTextEditingController,
                  ),
                  TextFieldInput(
                    hintText: "Last Row",
                    fieldTitleText: "Last Row",
                    textFieldWidth: deviceWidth * 0.4,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    validator: Validator.rowValidator,
                    controller: controller.lastRowTextEditingController,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFieldInput(
                    hintText: "Rows",
                    fieldTitleText: "Rows",
                    textFieldWidth: deviceWidth * 0.4,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    controller: controller.middleRowTextEditingController,
                  ),
                  TextFieldInput(
                    hintText: "Columns",
                    fieldTitleText: "Columns",
                    textFieldWidth: deviceWidth * 0.4,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    validator: Validator.columnValidator,
                    controller: controller.columnTextEditingController,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFieldInput(
                    hintText: "Column Gap",
                    fieldTitleText: "Column Gap",
                    textFieldWidth: deviceWidth * 0.4,
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.number,
                    controller: controller.columnGapTextEditingController,
                  ),
                  CoreButton(
                      onPressed: () => controller.seatPlanSubmitButton(),
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        width: deviceWidth * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: const Text("Submit",style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.green
                        ),),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
