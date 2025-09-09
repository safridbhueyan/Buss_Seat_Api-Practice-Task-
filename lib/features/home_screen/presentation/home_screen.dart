import 'package:buss_seat_ui/core/services/api_services/api_endpoints.dart';
import 'package:buss_seat_ui/features/home_screen/Riverpod/data_Provider.dart';
import 'package:buss_seat_ui/features/home_screen/data/seat_model.dart';
import 'package:buss_seat_ui/features/home_screen/presentation/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final seatData = ref.watch(dataProvider);
    final maxCols = 5;

    List<Data> flattenedSeats = [];
    if (seatData.record?.data != null) {
      for (var row in seatData.record!.data!) {
        List<Data> rowData = [];
        rowData.addAll(row);
        while (rowData.length < maxCols) {
          rowData.add(Data(type: "space"));
        }
        flattenedSeats.addAll(rowData);
      }
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: maxCols,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                  childAspectRatio: 1.5,
                ),
                itemCount: flattenedSeats.length,
                itemBuilder: (context, index) {
                  final seat = flattenedSeats[index];

                  String displayText;
                  switch (seat.type) {
                    case "seat":
                      displayText = seat.name ?? "";
                      break;
                    case "driver":
                      displayText = "Driver";
                      break;
                    case "door":
                      displayText = "Door";
                      break;
                    default:
                      displayText = "";
                  }

                  return CustomButtons(
                    text: displayText,
                    icon: seat.type == "seat"
                        ? Icons.event_seat
                        : seat.type == "door"
                        ? Icons.door_back_door
                        : seat.type == "driver"
                        ? Icons.drive_eta_rounded
                        : Icons.circle,
                    isSpaceOn: seat.type == "space",
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.grey),
                  ),
                  onPressed: () {
                    ref
                        .read(dataProvider.notifier)
                        .fetchData(apiEndpoint: ApiEndPoints.apiOne);
                  },
                  child: const Text(
                    "Load API 1",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.grey),
                  ),
                  onPressed: () {
                    ref
                        .read(dataProvider.notifier)
                        .fetchData(apiEndpoint: ApiEndPoints.apiTwo);
                  },
                  child: const Text(
                    "Load API 2",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
