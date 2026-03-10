import 'package:multiplayer/src/core/model/position/world_position.dart';

/// A position in a 3D vector world using x/y/z coordinates.
abstract class VectorPosition3D extends WorldPosition {
  final double x;
  final double y;
  final double z;

  VectorPosition3D(this.x, this.y, this.z);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorPosition3D &&
          other.x == x &&
          other.y == y &&
          other.z == z;

  @override
  int get hashCode => Object.hash(x, y, z);

  @override
  String toString() => 'VectorPosition3D(x: $x, y: $y, z: $z)';
}