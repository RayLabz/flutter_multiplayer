import 'package:multiplayer/src/core/model/transform/generic_transform.dart';

/// Represents an entity in the world, with a unique ID, position, and other properties.
abstract class Entity<TransformType extends Transform> {

  String id; // The unique identifier for this entity, which can be used for database storage and retrieval.
  String worldID; // The ID of the world this entity belongs to
  String playerID; // The ID of the player that owns this entity, if any
  double aoi; // Area of interest radius for this entity, used for determining which other entities it can interact with
  TransformType transform; // The transform of this entity, including its position, direction, and orientation
  List<String> validActionIDs = []; // A list of valid action IDs that this entity can perform, which can be used for determining which actions are available to the player when interacting with this entity.

  Entity(this.id, this.worldID, this.playerID, this.aoi, this.transform);

}