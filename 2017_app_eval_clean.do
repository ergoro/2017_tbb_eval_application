*clean
sum instructions time_apply platform material info_promo consult_resp_time parameters suggestions plat_info
graph matrix instructions time_apply platform material info_promo consult_resp_time, half
histogram instructions, frequency normal
histogram time_apply, frequency normal
histogram platform, frequency normal
histogram material, frequency normal
histogram info_promo, frequency normal
histogram consult_resp_time, frequency normal
graph box instructions time_apply platform material info_promo consult_resp_time, medtype(marker)
drop if missing(instructions)
