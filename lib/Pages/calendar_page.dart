import 'package:apphotels/Pages/widgets/appbar_page.dart';
import 'package:apphotels/Pages/widgets/calendar_range.dart';
import 'package:apphotels/Pages/widgets/period_section.dart';
import 'package:apphotels/Pages/widgets/validate_booking_section.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBarPage(),
      body: Column(
        children: const [
          PeriodSection(),
          CalendarRange(),
          ValidateBookingSection(),
        ],
      ),
    );
  }
}
