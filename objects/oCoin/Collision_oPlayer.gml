// Destroy the coin
instance_destroy();

// Start the flashing sequence in the player
with (other) {
    // Set up alarm to handle the flashing sequence
    alarm[0] = 30;  // 0.5 seconds at 60 FPS (first hide)
    visible = false;  // Start by hiding
    
    // Store the sequence state
    flash_step = 0;
}
