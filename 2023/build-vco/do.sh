awk -f cir.awk build-vco.cir | sed -e s/PMOS_OR1/PMOS/g -e s/NMOS_OR1/NMOS/g > build-vco-awk.cir
