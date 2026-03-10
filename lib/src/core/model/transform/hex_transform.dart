import 'package:multiplayer/src/core/model/direction/hex_direction.dart';
import 'package:multiplayer/src/core/model/transform/generic_transform.dart';

import '../position/hex_position.dart';

/// A transform for entities in a hexagonal grid world, including position, direction, and orientation.
abstract class HexTransform extends Transform<HexPosition, HexDirection, HexDirection> {

  HexTransform({
    required super.position,
    required super.direction,
    required super.orientation,
  });

}