import 'package:multiplayer/src/core/model/position/vector_position_2d.dart';

import 'generic_transform.dart';

/// A transform for entities in a 2D vector world, including position, direction, and orientation.
abstract class VectorTransform2D extends Transform<VectorPosition2D, VectorPosition2D, double> {

  VectorTransform2D({
    required super.position,
    required super.direction,
    required super.orientation,
  });

}