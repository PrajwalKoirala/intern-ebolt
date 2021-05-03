setofts_inv = [];
figure;
hold on;
lgd = [];

for b = 1000:500:1000
for k = 10000:10000:40000
     plot([1:4], return_ts(k, b, 0))
     scatter([1:4], return_ts(k, b, 0))
     lgd = [lgd; sprintf('k = %5d and b = %5d', k, b)];
     lgd = [lgd; sprintf('k = %5d and b = %5d', k, b)];
end
end

legend(lgd, 'Location','northeastoutside');
xlabel('vibration modes 1, 2, 3 and 4') 
ylabel('\delta \omega_n')
grid on;