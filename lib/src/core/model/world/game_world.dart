/// A class representing a game world, which contains information about the world such as its name, description, and dimensions.
abstract class GameWorld {

  //World data
  String id; // The unique identifier for the world, which can be used for database storage and retrieval.
  String userID; // The ID of the user who created the world, which can be used for ownership and permissions management.
  String name; // The name of the world, which can be displayed in the UI or used for logging.
  String description; // A brief description of the world, which can be displayed in the UI or used for tooltips.
  int createdOn = DateTime.now().millisecondsSinceEpoch; // The timestamp of when the world was created, which can be used for account management and analytics.

  //Dimensions
  int xBlockLimit;
  int yBlockLimit;
  int zBlockLimit;

  GameWorld(
    this.id,
    this.userID,
    this.name,
    this.description,
    this.xBlockLimit,
    this.yBlockLimit,
    this.zBlockLimit,
  );

}
