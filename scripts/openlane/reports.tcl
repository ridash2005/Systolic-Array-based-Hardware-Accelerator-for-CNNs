# Create directories for results
exec mkdir -p ./results/reports ./results/layouts ./results/logs

# Copy reports, GDS, and logs
exec cp runs/*/final/*.rpt ./results/reports/
exec cp runs/*/final/gds/*.gds ./results/layouts/
exec cp runs/*/logs/*.log ./results/logs/
