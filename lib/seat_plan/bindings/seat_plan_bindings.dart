import 'package:get/get.dart';
import 'package:test_seat_plan/seat_plan/controllers/seat_plan_controller.dart';

class SeatPlanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SeatPlanController>(
          () => SeatPlanController(),
    );
  }
}