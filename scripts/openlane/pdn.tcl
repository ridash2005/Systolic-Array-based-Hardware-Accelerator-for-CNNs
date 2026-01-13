# Power and ground rails
add_power -name vccd -voltage 1.0
add_ground -name vssd

# Assign core to power domain
set_power_domain -name core -vdd vccd -gnd vssd
