import 'package:buss_seat_ui/core/services/api_services/api_endpoints.dart';
import 'package:buss_seat_ui/core/services/api_services/api_services.dart';
import 'package:buss_seat_ui/features/home_screen/data/seat_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dataProvider = StateNotifierProvider<DataNotifier, SeatModel>((ref) {
  return DataNotifier();
});

class DataNotifier extends StateNotifier<SeatModel> {
  DataNotifier() : super(SeatModel());

  Future<void> fetchData({required String apiEndpoint}) async {
    try {
      final response = await ApiServices.instance.getData(
        endPoint: apiEndpoint,
        headers: {},
      );
      state = SeatModel.fromJson(response['record'] != null ? response : {});
      debugPrint(response.toString());
    } catch (e) {
      debugPrint("Error fetching data: $e");
    }
  }
}
