import 'package:multiplayer/src/core/model/position/world_position.dart';

/// A position in an axial hex world with q/r coordinates.
abstract class HexPosition extends WorldPosition {
  final int q;
  final int r;

  HexPosition(this.q, this.r);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HexPosition && other.q == q && other.r == r;

  @override
  int get hashCode => Object.hash(q, r);

  @override
  String toString() => 'HexPosition(q: $q, r: $r)';
}