leftHandInstance = instance_create_layer(playerObject.x, playerObject.y, "playerWeapons", leftHandObj);
with (leftHandInstance) {
	heldBy = playerObject;
}