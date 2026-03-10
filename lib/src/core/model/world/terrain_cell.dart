import 'package:multiplayer/src/core/model/position/grid_position.dart';

/// Represents a single cell of terrain in the world.
abstract class TerrainCell {

  String id;
  GridPosition position;

  TerrainCell(this.position) : id = "${position.x}:${position.y}";

}