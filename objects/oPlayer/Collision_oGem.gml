var gem_x = other.x;
var gem_y = other.y;
instance_create_layer(gem_x, gem_y, layer, oCoin);  // Spawn coin at saved position
with (other) instance_destroy();  // Destroy the gem
x = start_x;
y = start_y;
