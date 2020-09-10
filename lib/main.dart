import 'package:flutter/material.dart';
import 'package:fungaming/gaming_world.dart';
import 'package:fungaming/tic_tac_toe/tic_tac_toe.dart';
import 'splash.dart';
import 'package:fungaming/tic_tac_toe/decision_tic_tac_toe.dart';

String toc_winner=" ";

class tic_winner
{
  tic_winner(diag)
  {
    toc_winner = diag;
  }
}
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
        '/splash': (context) =>Splash(),
        '/gaming_world': (context) => GamingWorld(),
        '/tic_tac_toe':(context) => Tic_Tac_Toe(),
         '/decision':(context) => Decision(toc_winner),
    },

  ));
}

