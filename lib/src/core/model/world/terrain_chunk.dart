import 'package:crypto/crypto.dart';
import 'package:multiplayer/src/core/model/position/grid_position.dart';
import 'dart:convert';

import 'package:multiplayer/src/core/model/world/terrain_cell.dart';

/// Represents a chunk of terrain in the world. Each chunk is a square area of the world that can be loaded and unloaded independently.
/// This allows for efficient loading and unloading of terrain as the player moves around the world.
abstract class TerrainChunk {

  //Chunk data
  String id; // A unique identifier for the chunk, which can be used for caching and retrieval. This is generated based on the world ID and the chunk's position to ensure uniqueness across different worlds and positions.
  String worldID; // The ID of the world that this chunk belongs to, which can be used for caching and retrieval.
  GridPosition position; // The position of the chunk in the world, which can be used for loading and unloading terrain as the player moves around the world. This is typically represented as a grid position, where each chunk corresponds to a specific area of the world.
  Map<String, TerrainCell> cells = {}; // A map of terrain cells that belong to this chunk, where the key is the cell ID and the value is the TerrainCell object. This allows for efficient retrieval of terrain cells within the chunk.

  TerrainChunk(
    this.worldID,
    this.position,
  ) : id = md5.convert(utf8.encode("$worldID:${position.x}:${position.y}")).toString();

  //TODO - Add methods

}