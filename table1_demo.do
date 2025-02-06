cd "G:\drive-jhu\Al_Ammary\Table1"

qui do nhanes_fena.ado
qui do table1_fena.ado

use nhanes_public, clear

table1_fena, var("age ghb alb_u alb_log cre_u cre_log glu gender race bmi diabete dia_med hypertension hyp_med smoke education hs") excel(NHANES)

use donor_live, clear

table1_fena, var(don_age don_race_srtr don_gender don_work_income don_abo don_education don_hist_hyperten) excel(mort90)