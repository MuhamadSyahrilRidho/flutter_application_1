import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime selectDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Picker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              selectDate.toString(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                showDatePicker(
                    context: context,
                    initialDate: selectDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2030),
                    //initialEntryMode: DatePickerEntryMode.input,
                    //initialDatePickerMode: DatePickerMode.year,
                    // selectableDayPredicate: (day) {
                    //   if ((day.isAfter(
                    //         DateTime.now().subtract(
                    //           Duration(
                    //             days: 2,
                    //           ),
                    //         ),
                    //       )) &&
                    //       (day.isBefore(
                    //         DateTime.now().add(
                    //           Duration(
                    //             days: 2,
                    //           ),
                    //         ),
                    //       ))) {
                    //     return true;
                    //   }
                    //   return false;
                    // },
                  //   helpText: "help text",
                  //   cancelText: "cancel text",
                  //   confirmText: "confirm text",
                  //   fieldHintText: "field hint text",
                  //   fieldLabelText: "field label text",
                  //   builder: (context, child) {
                  //     return Theme(
                  //       data: ThemeData.dark(),
                  //       child: child!,
                  //     );
                  //   },
                  //   ).then(
                  // (value) {
                  //   if (value != null)
                  //     setState(() {
                  //       selectDate = value;
                  //     });
                  // },
                );
              },
              child: Text("Date Picker"),
            ),
          ],
        ),
      ),
    );
  }
}
