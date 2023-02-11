import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppBarPage extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBarPage({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 22,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'Choose your dates',
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 19,
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
