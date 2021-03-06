#! /bin/bash

processes="$1"
repetitions="$2"

# Update the noisy tournaments
echo "-- Regenerating noisy tournament figures"
# Run the noisy tournament
python3 run_axelrod --noise 0.05 --rc -p $processes -o assets -r $repetitions --xc
# Copy these figures over, renaming as appropriate
mv assets/strategies_payoff.svg assets/strategies_payoff_noise_5.svg
mv assets/strategies_boxplot.svg assets/strategies_boxplot_noise_5.svg
mv assets/strategies_winplot.svg assets/strategies_winplot_noise_5.svg
mv assets/strategies_sdvplot.svg assets/strategies_sdvplot_noise_5.svg
mv assets/strategies_pdplot.svg assets/strategies_pdplot_noise_5.svg

# Running noiseless tournament
echo "-- Running Axelrod, regenerating cache, results, and figures"
# Also Copy the results and figures over to assets
./run_axelrod --rc -p $processes -o assets -r $repetitions --xc

echo "Be sure to git commit changes to update the docs!"
