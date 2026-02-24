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

class AnimatedWidgetweb extends StatefulWidget {
  final imgPath;
  final text;
  final fit;
  final reverse;
  const AnimatedWidgetweb({
    super.key,
    required this.text,
    required this.imgPath,
    this.fit,
    this.reverse,
  });

  @override
  State<AnimatedWidgetweb> createState() => _AnimatedWidgetwebState();
}

class _AnimatedWidgetwebState extends State<AnimatedWidgetweb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 4),
  )..repeat(reverse: true);

  late Animation<Offset>_animation=Tween(
    begin: widget.reverse==true ? Offset(0.0, 0.08) : Offset.zero,
    end: widget.reverse==true ? Offset.zero : Offset(0.0, 0.08)
  ).animate(_controller);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(position: _animation,
    child:  Card(
      elevation: 30,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
        side: BorderSide(color: Colors.tealAccent,width: 2.0),

      ),
      shadowColor: Colors.tealAccent,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(
              widget.imgPath,
              height: 200,
              width: 200,
              fit: widget.fit ==null ?null : widget.fit,
            ),
            sansText(widget.text, 15),
          ],
        ),
      ),
    )
    );
  }
}
