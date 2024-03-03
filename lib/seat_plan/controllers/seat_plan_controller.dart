import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_seat_plan/core/utils/extensions.dart';

class SeatPlanController extends GetxController {
  final GlobalKey<FormState> signInFormKey = GlobalKey<FormState>();

  final TextEditingController firstRowTextEditingController = TextEditingController();
  final TextEditingController lastRowTextEditingController = TextEditingController();
  final TextEditingController middleRowTextEditingController = TextEditingController();
  final TextEditingController columnTextEditingController = TextEditingController();
  final TextEditingController columnGapTextEditingController = TextEditingController();

  RxDouble firstRow = 0.0.obs;
  RxDouble lastRow = 0.0.obs;
  RxDouble middleRow = 0.0.obs;
  RxDouble columns = 0.0.obs;
  RxDouble columnGap = 0.0.obs;
  RxDouble defaultRowGap = 0.0.obs;
  RxDouble rowGap = 0.0.obs;

  RxBool allColumnsIsEqual = false.obs;


  @override
  void onInit() {
    super.onInit();

  }
  Future<void> seatPlanSubmitButton()async {

    middleRow.value = double.parse(middleRowTextEditingController.text.isNotEmpty ? middleRowTextEditingController.text : "0.0");
    columns.value = double.parse(columnTextEditingController.text.isNotEmpty ? columnTextEditingController.text  : "0.0");
    columnGap.value = double.parse(columnGapTextEditingController.text.isNotEmpty ? columnGapTextEditingController.text : "0.0");
    if (signInFormKey.currentState!.validate()){
      if(middleRow.value > 0 && columns.value <= 0){
        "If you add rows then column also required".errorSnackBar();
      }else{
        firstRow.value = double.parse(firstRowTextEditingController.text);
        lastRow.value = double.parse(lastRowTextEditingController.text);
        if(firstRow.value == columns.value && lastRow.value == columns.value){
          allColumnsIsEqual.value = true;
          print("In If allColumnsIsEqual: $allColumnsIsEqual");
        }else{
          allColumnsIsEqual.value = false;
          print("In Else allColumnsIsEqual: $allColumnsIsEqual");

        }
        calculateRowGap();
      }
      update();
    }
  }
  Future<void> calculateRowGap() async{
    defaultRowGap.value = (Get.width - (20 + (50 * columns.value)))/columns.value;
    if(3 > columns.value || columns.value > 4 && allColumnsIsEqual.isTrue){
      "Column gap will implement only for 3 or 4 column".infoSnackBar();
    }else{
      if(columnGap.value > defaultRowGap.value){
        rowGap.value = 0.0;
        columnGap.value = 0.0;
        "You can add max $defaultRowGap pixel gap between columns".errorSnackBar();
      }else{
        rowGap.value = columnGap.value;
        print("Device width: $defaultRowGap");
      }
    }

    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}