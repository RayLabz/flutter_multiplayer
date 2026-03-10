import '../entity.dart';
import '../world/terrain_cell.dart';

abstract class StateUpdate<EntityType extends Entity, TerrainCellType extends TerrainCell> {

  String worldSessionID; // The ID of the world session associated with this state update, which can be used for database storage and retrieval.
  Map<String, dynamic> entityUpdates = {}; // A map of entity IDs to their updated properties, representing the changes to the entities in the game world since the last state update.
  Map<String, dynamic> terrainCellUpdates = {}; // A map of terrain cell hashes to their updated properties, representing the changes to the terrain cells in the game world since the last state update.
  List<String> removedEntityIDs = []; // A list of entity IDs that have been removed from the game world since the last state update, which can be used for synchronization and analytics.
  List<String> removedTerrainCellHashes = []; // A list of terrain cell hashes that have been removed from the game world since the last state update, which can be used for synchronization and analytics.
  int timestamp = DateTime.now().millisecondsSinceEpoch;  // The timestamp of when the state update was created, which can be used for synchronization and analytics.

  StateUpdate(this.worldSessionID);

}