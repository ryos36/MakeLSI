.options temp=20 tnom=20
$.DC V1 0.0 3.3 0.10
$.DC TEMP -40 100 10
$.DC V1 -1.0 1.0 0.010

$.AC dec 10 0.1k 100Meg
.Tran  200ns 40000ns

.control

run

plot V(Vout) V(Vout2) 

linearize V(Vin) V(Vout2) V(Vout) V(Vnoise)
set specwindow=blackman
FFT V(Vin) V(Vout2) V(Vout) V(Vnoise)
plot mag(V(Vin)) mag(V(Vout2)) mag(V(Vout)) mag(V(Vnoise)) ylog 

.endc

