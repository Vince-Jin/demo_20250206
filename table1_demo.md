General set up for the environment.

``` stata

cls
clear all

qui do "https://raw.githubusercontent.com/Vince-Jin/demo_20250206/refs/heads/main/nhanes_fena.ado"
qui do "https://raw.githubusercontent.com/Vince-Jin/demo_20250206/refs/heads/main/table1_fena.ado"

```

Actually running the table1

``` stata

use "https://github.com/Vince-Jin/demo_20250206/refs/heads/main/nhanes_public.dta", clear
noi table1_fena, var("age ghb alb_u alb_log cre_u cre_log glu gender race bmi diabete dia_med hypertension hyp_med smoke education hs")

```