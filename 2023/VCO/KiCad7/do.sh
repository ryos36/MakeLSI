awk -f cir.awk VCO.cir | sed -e s/PMOS_OR1/PMOS/g -e s/NMOS_OR1/NMOS/g > VCO-awk.cir
