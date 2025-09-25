// stata/replicate.do
// Replication scaffold for the LPM with fixed effects as described in the paper.
//
// 1) Set your paths
// global ROOT "<path to repo>"
// cd "$ROOT"
//
// 2) Import data (panel-like cohorts)
// import delimited "data/raw/your_data.csv", varnames(1) clear
//
// 3) Example FE regression (adjust var names to your schema)
// * Entry into entrepreneurship ~ unemployment shock
// xi: reg entrepr_dummy unemploy, robust i.university#i.grad_cohort i.major i.gender i.industry
//
// 4) Save tables
// outreg2 using "figures/tables.doc", replace

clear
display "Fill in paths and variables per your dataset; see README."
