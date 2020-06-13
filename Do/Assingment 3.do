ssc install estout
rename d D
rename age Age
rename y Y
regress Y D
eststo D
regress Y D Age
eststo D_Age
esttab, se nostar brackets r2
esttab using A.rtf, stats(r2) se

regress Y D Age
eststo Mult_Reg
regress D Age
eststo Aux_Reg
_predict d
regress Y d
eststo Res_Reg
esttab, se nostar brackets r2
esttab using B.rtf, stats(r2) se