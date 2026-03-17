import 'package:multiplayer/src/core/model/leaderboard/leaderboard_order.dart';
import 'package:multiplayer/src/core/model/leaderboard/leaderboard_scope.dart';
import 'package:multiplayer/src/core/model/player.dart';

/// Represents a leaderboard.
abstract class Leaderboard<PlayerType extends Player> {

  String name; // The name of the leaderboard, which can be used for display and retrieval.
  String worldSessionID; // The ID of the world session associated with the leaderboard.
  String description; // A description of the leaderboard, which can be used for display and retrieval.
  LeaderboardOrder order; // The order in which players are ranked on the leaderboard, which can be used for display and retrieval.
  LeaderboardScope scope; // The scope of the leaderboard, which can be used for display and retrieval.
  List<PlayerType> players = []; // A list of players on the leaderboard, which can be used for display and retrieval.
  int createdOn = DateTime.now().millisecondsSinceEpoch;  // The timestamp of when the leaderboard was created, which can be used for display and retrieval.

  Leaderboard(this.name, this.worldSessionID, this.description, this.order,
      this.scope, this.players,
      this.createdOn);

}