import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:apphotels/Home/home_page.dart';

final kNow = DateTime.now();
final kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
final kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);

class CalendarRange extends StatefulWidget {
  const CalendarRange({super.key});

  @override
  State<CalendarRange> createState() => _CalendarRangeState();
}

class _CalendarRangeState extends State<CalendarRange> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.toggledOn;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: Colors.grey[10],
      child: Expanded(
        child: TableCalendar(
          lastDay: kLastDay,
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
          rangeStartDay: _rangeStart,
          rangeEndDay: _rangeEnd,
          calendarFormat: _calendarFormat,
          headerStyle: const HeaderStyle(
            titleCentered: true,
            formatButtonVisible: false,
            titleTextStyle: TextStyle(fontSize: 18),
            leftChevronIcon: Icon(
              Icons.chevron_left_rounded,
              color: dBlue,
              size: 30,
            ),
            rightChevronIcon: Icon(
              Icons.chevron_right_rounded,
              color: dBlue,
              size: 30,
            ),
          ),
          calendarStyle: const CalendarStyle(
            isTodayHighlighted: false,
            rangeHighlightColor: dBlue,
            rangeStartDecoration: BoxDecoration(
              color: dBlue,
              shape: BoxShape.circle,
              border: Border.fromBorderSide(
                BorderSide(
                  color: Colors.white,
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            withinRangeTextStyle: TextStyle(
              color: Colors.white,
            ),
            rangeEndDecoration: BoxDecoration(
              color: dBlue,
              shape: BoxShape.circle,
              border: Border.fromBorderSide(
                BorderSide(
                  color: Colors.white,
                  width: 3,
                  style: BorderStyle.solid,
                ),
              ),
            ),
          ),
          firstDay: kFirstDay,
          rangeSelectionMode: _rangeSelectionMode,
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, selectedDay)) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
                _rangeStart = null;
                _rangeEnd = null;
                _rangeSelectionMode = RangeSelectionMode.toggledOff;
              });
            }
          },
          onRangeSelected: (start, end, focusedDay) {
            setState(() {
              _selectedDay = null;
              _focusedDay = focusedDay;
              _rangeStart = start;
              _rangeEnd = end;
              _rangeSelectionMode = RangeSelectionMode.toggledOn;
            });
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
        ),
      ),
    );
  }
}
