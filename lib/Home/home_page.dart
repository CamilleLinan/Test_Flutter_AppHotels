import 'package:apphotels/Home/widgets/hotel_section.dart';
import 'package:apphotels/Home/widgets/search_section.dart';
import 'package:flutter/material.dart';
import 'package:apphotels/Home/widgets/appbar.dart';

const dBlue = Color.fromARGB(255, 1, 120, 138);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dBlue,
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SearchSection(),
            HotelSection(),
          ],
        ),
      ),
    );
  }
}