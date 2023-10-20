import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class MyBall extends StatelessWidget {
  final double ballX;
  final double ballY;
  final bool isGameOver;
  final bool hasGameStarted;

  const MyBall({
    Key? key,
    required this.ballX,
    required this.ballY,
    required this.isGameOver,
    required this.hasGameStarted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return hasGameStarted
        ? Container(
            alignment: Alignment(ballX, ballY),
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color:
                    isGameOver ? Colors.deepPurple.shade300 : Colors.deepPurple,
                shape: BoxShape.circle,
              ),
            ),
          )
        : Container(
            alignment: Alignment(ballX, ballY),
            child: AvatarGlow(
              endRadius: 60,
              child: Material(
                elevation: 8,
                shape: const CircleBorder(),
                child: CircleAvatar(
                  backgroundColor: Colors.deepPurple.shade100,
                  radius: 7,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.deepPurple,
                    ),
                    width: 15,
                    height: 15,
                  ),
                ),
              ),
            ),
          );
  }
}
