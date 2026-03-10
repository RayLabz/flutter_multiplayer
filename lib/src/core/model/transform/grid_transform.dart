import '../direction/grid_direction.dart';
import '../position/grid_position.dart';
import 'generic_transform.dart';

/// A transform that is specific to a grid-based world, using GridPosition for position and GridDirection for direction and orientation.
abstract class GridTransform extends Transform<GridPosition, GridDirection, GridDirection> {

  GridTransform({
    required super.position,
    required super.direction,
    required super.orientation,
  });

}