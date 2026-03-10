/// Represents an action that can be performed by an entity in the game.
abstract class Action {

  String id; // The unique identifier for the action, which can be used for database storage and retrieval.
  String name; // The name of the action, which can be displayed in the UI or used for logging.
  String description; // A brief description of the action, which can be displayed in the UI or used for tooltips.
  double aoe; // Area of effect, in units. This determines how far the action can affect other entities or terrain.

  Action(this.id, this.name, this.description, this.aoe);

}