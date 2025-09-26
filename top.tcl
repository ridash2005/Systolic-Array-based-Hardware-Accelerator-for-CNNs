# top.tcl - Main TCL script for Systolic4x4_serial_io OpenLane 2 project

puts "=== Starting OpenLane 2 setup for Systolic4x4_serial_io ==="

# -------------------------------
# 1️⃣ Apply pin constraints
# -------------------------------
puts "--- Applying pin constraints ---"
source pins.tcl

# -------------------------------
# 2️⃣ Apply floorplan
# -------------------------------
puts "--- Applying floorplan ---"
source floorplan.tcl

# -------------------------------
# 3️⃣ Apply power network
# -------------------------------
puts "--- Applying power network ---"
source pdn.tcl

# -------------------------------
# 4️⃣ (Optional) Copy reports/logs after flow
# -------------------------------
# This part can be executed manually or at the end of the flow
# source reports.tcl
# If you want automatic post-run copying, uncomment the line above

puts "=== TCL setup complete ==="
