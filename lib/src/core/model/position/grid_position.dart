import 'package:multiplayer/src/core/model/position/world_position.dart';

/// A position in a grid-based world using integer x/y coordinates.
abstract class GridPosition extends WorldPosition {
  final int x;
  final int y;

  GridPosition(this.x, this.y);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GridPosition && other.x == x && other.y == y;

  @override
  int get hashCode => Object.hash(x, y);

  @override
  String toString() => 'GridPosition(x: $x, y: $y)';
}