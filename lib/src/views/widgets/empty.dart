import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyView extends StatelessWidget {
  const EmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Things look empty here. Tap + to start", style: GoogleFonts.spaceMono(fontSize: 18),),
      ],
    );
  }
}