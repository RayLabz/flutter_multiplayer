import 'package:multiplayer/src/core/model/position/world_position.dart';

/// A position in a 2D vector world using x/y coordinates.
abstract class VectorPosition2D extends WorldPosition {
  final double x;
  final double y;

  VectorPosition2D(this.x, this.y);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorPosition2D && other.x == x && other.y == y;

  @override
  int get hashCode => Object.hash(x, y);

  @override
  String toString() => 'VectorPosition2D(x: $x, y: $y)';
}