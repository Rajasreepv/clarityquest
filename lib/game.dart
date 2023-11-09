import 'dart:math';

import 'package:flutter/material.dart';

class game extends StatefulWidget {
  const game({super.key});

  @override
  State<game> createState() => _gameState();
}

int answer = 3;

class _gameState extends State<game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clear your confusion"),
      ),
      body: Row(
        children: [
          Expanded(
            child: Center(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      answer = Random().nextInt(4) + 1;
                    });
                  },
                  child: Image.asset("images/ball$answer.png")),
            ),
          )
        ],
      ),
    );
  }
}
