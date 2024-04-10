import 'package:date_picker_plus/date_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en', 'US'),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [
        Locale('en', 'GB'),
        Locale('en', 'US'),
        Locale('ar'),
        Locale('zh'),
      ],
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RangeDatePicker(
                    centerLeadingDate: true,
                    customHeaderBuilder: ((details) => ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth:
                                MediaQuery.of(context).size.width * 0.7),child: Row(children: [
                                  GestureDetector(
                                    onTap: details.onDateTap,
                                    child: Text(details.displayedDate))
                                ],),)
                                ),
                    minDate: DateTime(2020, 10, 10),
                    maxDate: DateTime(2024, 10, 30),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
