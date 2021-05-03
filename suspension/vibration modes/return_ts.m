function [ ts_inv ] = return_ts( k,b, do_plot )

M = 232.7;
Mw = 48.4;
kw = 242000;

M_w = Mw; k_w = kw;

format long
A = [0 1 0 0; 0 0 -k/M -b/M; 0 0 0 1; kw/Mw 0 -k/M-k/Mw-kw/Mw -b/M-b/Mw];
B = [0; 0; 0; -kw/Mw];

C = [1 0 0 0];
D = zeros(1,1);

sys = ss(A,B,C,D);
[wn, zeta] = damp(sys);

ts_inv = wn.*zeta;

if do_plot == 1
    figure;
    step(sys)
end

end

