import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoverScreen extends StatelessWidget {
  final bool hasGameStarted;
  final bool isGameOver;

  // font
  static var gameFont = GoogleFonts.pressStart2p(
    textStyle: TextStyle(
      color: Colors.deepPurple.shade600,
      letterSpacing: 0,
      fontSize: 28,
    ),
  );

  const CoverScreen({
    Key? key,
    required this.hasGameStarted,
    required this.isGameOver,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return hasGameStarted
        ? Container(
            alignment: const Alignment(0, -0.5),
            child: Text(
              isGameOver ? "" : "BRICK BREAKER",
              style: gameFont.copyWith(
                color: Colors.deepPurple.shade200,
              ),
            ),
          )
        : Stack(
            children: [
              Container(
                alignment: const Alignment(0, -0.5),
                child: Text(
                  "BRICK BREAKER",
                  style: gameFont,
                ),
              ),
              Container(
                alignment: const Alignment(0, -0.1),
                child: Text(
                  "tap to play",
                  style: TextStyle(
                    color: Colors.deepPurple.shade400,
                  ),
                ),
              ),
            ],
          );
  }
}
