import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageWebTabs extends StatefulWidget {
  final String title;
  const LandingPageWebTabs(this.title, {super.key});

  @override
  State<LandingPageWebTabs> createState() => _LandingPageWeTabsState();
}

class _LandingPageWeTabsState extends State<LandingPageWebTabs> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },

      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },

      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        style: isSelected
            ? GoogleFonts.oswald(
                fontSize: 25.0,
                color: Colors.black,
                decoration: TextDecoration.underline,
                decorationThickness: 2,
                decorationColor: Colors.tealAccent,
              )
            : GoogleFonts.oswald(fontSize: 23.0, color: Colors.black),
        child: Text(widget.title),
      ),
    );
  }
}

class sansBoldText extends StatelessWidget {
  final text;
  final size;

  const sansBoldText(this.size, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.openSans(fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class sansText extends StatelessWidget {
  final text;
  final size;
  const sansText(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.openSans(fontSize: size));
  }
}
