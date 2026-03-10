import 'package:multiplayer/src/core/model/world/terrain_cell.dart';

import '../entity.dart';

abstract class GameState<EntityType extends Entity, TerrainCellType extends TerrainCell> {

  String worldSessionID; // The ID of the world session associated with this game state, which can be used for database storage and retrieval.
  Map<String, EntityType> entities = {}; // A map of entity IDs to entities, representing the current state of the game world.
  Map<String, TerrainCellType> terrainCells = {}; // A map of terrain cell hashes to terrain cells, representing the current state of the game world.
  int timestamp = DateTime.now().millisecondsSinceEpoch;  // The timestamp of when the game state was created or last updated, which can be used for synchronization and analytics.

  GameState(this.worldSessionID);

}