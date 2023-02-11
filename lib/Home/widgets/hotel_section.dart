import 'package:apphotels/Home/widgets/hotel_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:apphotels/Home/home_page.dart';

class HotelSection extends StatelessWidget {
  HotelSection({super.key});

  final List hotelList = [
    {
      'title': 'The Corinthia',
      'place': 'Camden Town, London',
      'distance': 2,
      'review': 36,
      'picture': 'images/hotel_1.jpg',
      'price': '180',
    },
    {
      'title': 'The Rosewood',
      'place': 'Notting Hill, London',
      'distance': 3,
      'review': 13,
      'picture': 'images/hotel_2.jpg',
      'price': '220',
    },
    {
      'title': 'The Four Seasons',
      'place': 'Westminster, London',
      'distance': 6,
      'review': 88,
      'picture': 'images/hotel_3.jpg',
      'price': '400',
    },
    {
      'title': 'The Dorchester',
      'place': 'West-End, London',
      'distance': 11,
      'review': 34,
      'picture': 'images/hotel_4.jpg',
      'price': '910',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    '530 hotels founds',
                    style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  child: Row(
                    children: [
                      Text(
                        'Filters',
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const IconButton(
                        icon: Icon(
                          Icons.filter_list_outlined,
                          color: dBlue,
                          size: 24,
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: hotelList.map((hotel) {
              return HotelCard(hotel);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
