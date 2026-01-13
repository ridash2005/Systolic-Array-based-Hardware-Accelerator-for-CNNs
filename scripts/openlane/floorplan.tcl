# Floorplan for Systolic4x4_serial_io

# Die and core area (in microns)
floorplan -die_area {0 0 5000 5000} -core_area {200 200 4800 4800}

# Place core at offset
place_core -offset {200 200}
