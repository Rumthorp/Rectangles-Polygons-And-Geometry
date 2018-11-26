var anchorDirection = point_direction(heldBy.x ,heldBy.y, heldBy.x + offsetX, heldBy.y + offsetY); //direction to anchor.
var anchorDistance = point_distance(heldBy.x ,heldBy.y, heldBy.x + offsetX, heldBy.y + offsetY); //distance to anchor.

x = heldBy.x + lengthdir_x(anchorDistance, anchorDirection + heldBy.image_angle);
y = heldBy.y + lengthdir_y(anchorDistance, anchorDirection + heldBy.image_angle);

image_angle = heldBy.image_angle;