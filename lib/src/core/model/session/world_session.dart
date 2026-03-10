import 'package:multiplayer/src/core/model/direction/angle3d.dart';

import '../position/world_position.dart';

abstract class WorldSession<CameraPosition extends WorldPosition, CameraDirection extends Angle3D> {

  String id; // The unique identifier for the world session, which can be used for database storage and retrieval.
  String playerID; // The ID of the player associated with the session, which can be
  String worldID; // The ID of the world associated with the session, which can be used for database storage and retrieval.
  String ipAddress; // The IP address of the player associated with the session, which can be used for security and analytics.

  int createdOn = DateTime.now().millisecondsSinceEpoch; // The timestamp of when the session was created, which can be used for account management and analytics.
  int expiresOn; // The timestamp of when the session expires, which can be used for account management and security.
  CameraPosition cameraPosition; // The position of the camera in the world, which can be used for rendering and gameplay.
  CameraDirection cameraDirection; // The direction of the camera in the world, which can be used for rendering and gameplay.

  WorldSession(this.id, this.playerID, this.worldID, this.ipAddress,
      this.createdOn, this.expiresOn, this.cameraPosition,
      this.cameraDirection);

}