# Function to be called every tick using tags
execute if score inProgress trekGeneral matches 1 run function trek:tick/in_progress
execute if score exploding trekGeneral matches 1 run function trek:tick/exploding

# This function needs to be callable even outside of a match, so that players can change their log levels before an event starts.
# Lag impact should be minimal, due to the way functions are handled.
function trek:debug/tick
