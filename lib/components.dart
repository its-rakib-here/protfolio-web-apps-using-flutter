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

class inputField extends StatelessWidget {
  final heading;
  final width;
  final hintText;
  final maxline;
  const inputField({
    super.key,
    required this.heading,
    required this.width,
    required this.hintText,
    this.maxline,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        sansText(heading, 16.0),
        const SizedBox(height: 5),

        SizedBox(
          width: width,
          child: TextFormField(
            maxLines: maxline,
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.teal, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
