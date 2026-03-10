/// A generic transform class that can be used for any type of position, direction, and orientation.
abstract class Transform<P, D, O> {
  P position;
  D direction;
  O orientation;

  Transform({
    required this.position,
    required this.direction,
    required this.orientation,
  });

}