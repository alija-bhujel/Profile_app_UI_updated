import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logout extends StatelessWidget {
  const Logout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 35,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 227, 95, 86),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.only(left: 18),
        child: Row(
          children: [
            Text(
              'Log out',
              style: GoogleFonts.poppins(color: Colors.white),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.logout,
              color: Colors.white,
              size: 20,
            )
          ],
        ),
      ),
    );
  }
}
