// import 'package:athlos/athlos.dart';
// import 'package:flutter/material.dart';
//
// class LeaderboardView<LeaderboardType extends Leaderboard> extends StatelessWidget {
//
//   final LeaderboardType leaderboard;
//
//   LeaderboardView({
//     super.key,
//     required this.leaderboard
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: leaderboard.players.map((player) {
//         return ListTile(
//           title: Text(player.nickname),
//           //TODO - Points, etc.
//         );
//       },).toList(),
//
//     );
//   }
// }
