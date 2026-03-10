import 'package:multiplayer/src/core/model/direction/angle3d.dart';
import 'package:multiplayer/src/core/model/position/vector_position_3d.dart';

import 'generic_transform.dart';

/// A transform for entities in a 3D vector world, including position, direction, and orientation.
abstract class VectorTransform3D extends Transform<VectorPosition3D, VectorPosition3D, Angle3D> {

  VectorTransform3D({
    required super.position,
    required super.direction,
    required super.orientation,
  });

}