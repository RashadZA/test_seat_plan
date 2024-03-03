import 'package:get/get.dart';
import 'package:test_seat_plan/seat_plan/bindings/seat_plan_bindings.dart';
import 'package:test_seat_plan/seat_plan/views/seat_plan_view.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SEATPLAN;

  static final routes = [
    GetPage(
      name: _Paths.SEATPLAN,
      page: () => const SeatPlanView(),
      binding: SeatPlanBinding(),
    ),
  ];
}
