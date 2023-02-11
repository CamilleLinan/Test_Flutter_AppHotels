import 'package:apphotels/Home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelCard extends StatelessWidget {
  final Map hotelData;
  const HotelCard(this.hotelData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 275,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(18),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 4,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 190,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(
                  hotelData['picture'],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: const CircleBorder(),
                    onPressed: () {},
                    child: Container(
                      padding: const EdgeInsets.only(top: 2),
                      child: const Icon(
                        Icons.favorite_outline_rounded,
                        color: dBlue,
                        size: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['title'],
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '\$${hotelData['price']}',
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                    color: Colors.grey[500],
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 2),
                      child: const Icon(
                        Icons.place,
                        color: dBlue,
                        size: 14,
                      ),
                    ),
                    Text(
                      '${hotelData['distance']}km to city',
                      style: GoogleFonts.nunito(
                        color: Colors.grey[500],
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  '/per night',
                  style: GoogleFonts.nunito(
                    color: Colors.grey.shade800,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 6, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_rate_rounded,
                      color: dBlue,
                      size: 18,
                    ),
                    const Icon(
                      Icons.star_rate_rounded,
                      color: dBlue,
                      size: 18,
                    ),
                    const Icon(
                      Icons.star_rate_rounded,
                      color: dBlue,
                      size: 18,
                    ),
                    const Icon(
                      Icons.star_rate_rounded,
                      color: dBlue,
                      size: 18,
                    ),
                    Icon(
                      Icons.star_rate_rounded,
                      color: Colors.grey[400],
                      size: 18,
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Text(
                  '${hotelData['review']} reviews',
                  style: GoogleFonts.nunito(
                    color: Colors.grey[500],
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
