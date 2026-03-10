/// The GameSession class represents a session for a player in the game.
abstract class GameSession {

  String id; // The unique identifier for the game session, which can be used for database storage and retrieval.
  String playerID; // The ID of the player associated with the session, which can be used for account management and analytics.
  String ipAddress; // The IP address of the player associated with the session, which can be used for security and analytics.
  int createdOn = DateTime.now().millisecondsSinceEpoch; // The timestamp of when the session was created, which can be used for account management and analytics.
  int expiresOn; // The timestamp of when the session expires, which can be used for account management and security.

  GameSession(
    this.id,
    this.playerID,
    this.ipAddress,
    this.createdOn,
    this.expiresOn,
  );

}
