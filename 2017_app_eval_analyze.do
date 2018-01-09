*analyze
histogram instructions, fraction normal addlabels addlabopts(yvarformat(%3.2f)) xtitle("Nivel de concordancia" "(1) completamente en desacuerdo  -  completamente de acuerdo (5)")
histogram time_apply, fraction normal addlabels addlabopts(yvarformat(%3.2f)) xtitle("Nivel de concordancia" "(1) completamente en desacuerdo  -  completamente de acuerdo (5)")
histogram platform, fraction normal addlabels addlabopts(yvarformat(%3.2f)) xtitle("Nivel de concordancia" "(1) completamente en desacuerdo  -  completamente de acuerdo (5)")
histogram material, fraction normal addlabels addlabopts(yvarformat(%3.2f)) xtitle("Nivel de concordancia" "(1) completamente en desacuerdo  -  completamente de acuerdo (5)")
histogram info_promo, fraction normal addlabels addlabopts(yvarformat(%3.2f)) xtitle("Nivel de concordancia" "(1) completamente en desacuerdo  -  completamente de acuerdo (5)")
histogram consult_resp_time, fraction normal addlabels addlabopts(yvarformat(%3.2f)) xtitle("Nivel de concordancia" "(1) completamente en desacuerdo  -  completamente de acuerdo (5)")
encode plat_info, gen(plat_info_2)
gen nvals=0
quietly forval i=1/`=_N'{
	foreach v of var plat_info {
		if `v'[`i'] != "." {
			local all `"`all' `"`=`v'[`i']'"'"'
		}
	}
	local all: list uniq all
	replace nvals = `: list sizeof all' in `i'
	local all
}
sort plat_info
by plat_info: replace nvals=sum(nvals)
by plat_info: replace nvals=nvals[_N]
graph hbar (percent) plat_info_2, over(plat_info, sort(nvals) descending) ytitle("Porcentajes")
*tab suggestions
tab plat_info
