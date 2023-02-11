import 'package:apphotels/Home/home_page.dart';
import 'package:flutter/material.dart';

class ValidateBookingSection extends StatelessWidget {
  const ValidateBookingSection({super.key});

  final selectedRadio = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: selectedRadio,
          activeColor: dBlue,
          groupValue: selectedRadio,
          selected: true,
          title: const Text(
            'Flexible with dates',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          onChanged: null,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: dBlue,
              padding: const EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Apply',
              style: TextStyle(fontSize: 17),
            ),
            onPressed: () {
              print('Apply Booking');
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }
}
