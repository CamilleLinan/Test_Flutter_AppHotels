import 'package:apphotels/Pages/widgets/appbar_page.dart';
import 'package:apphotels/Pages/widgets/calendar_range.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBarPage(),
      body: Container(
        child: Column(
          children: const [
            CalendarRange(),
          ],
        ),
      ),
    );
  }
}
