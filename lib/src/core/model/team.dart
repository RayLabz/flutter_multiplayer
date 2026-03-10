/// A class representing a team in the game, which can be used for team-based gameplay, matchmaking, and account management.
abstract class Team {

  String id; // The unique identifier for the team, which can be used for database storage and retrieval.
  String leaderID; // The ID of the player who is the leader of the team, which can be used for team management and permissions.
  String name; // The name of the team, which can be displayed in the UI or used for logging.
  String description; // A brief description of the team, which can be displayed in the UI or used for tooltips.
  int createdOn = DateTime.now().millisecondsSinceEpoch; // The timestamp of when the team was created, which can be used for account management and analytics.
  int playerLimit; // The maximum number of players that can be on the team, which can be used for matchmaking and team management.
  List<String> playerIDs;  // A list of player IDs that are members of the team, which can be used for team-based gameplay and matchmaking.

  Team(this.id, this.leaderID, this.name, this.description,
      this.playerLimit,
      this.playerIDs);

}