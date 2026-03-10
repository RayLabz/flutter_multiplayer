/// A class representing a player in the game.
abstract class Player {

  String id; // The unique identifier for the player, which can be used for database storage and retrieval.
  String nickname; // The player's nickname, which can be displayed in the UI or used for logging.
  String emailAddress; // The player's email address, which can be used for account management and communication.
  String teamID; // The ID of the team that the player belongs to, which can be used for team-based gameplay and matchmaking.
  int createdOn = DateTime.now().millisecondsSinceEpoch; // The timestamp of when the player was created, which can be used for account management and analytics.

  Player(
    this.id,
    this.nickname,
    this.emailAddress,
    this.teamID,
  );

}
