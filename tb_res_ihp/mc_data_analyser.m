clear all
close all
clc
warning('off')
pkg load statistics

%%%%%%%%%%%%%%%%%%%%%%%%%% 1. READ IN DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%

mc_data = textread('res_measures_typ_mc.txt',"%f");
%typ_data = textread('res_measures.txt',"%f");

%%%%%%%%%%%%%%%%%%%%%%%%%% 2. PLOT HISTOGRAM %%%%%%%%%%%%%%%%%%%%%%%%%%

numBins = 21;

[nn,xx] = hist(mc_data,numBins);

figure(1)
bar(xx,nn)
title('MC R spread')
axis("tight")
xlabel('R (ohm)')
ylabel('count')
grid on

%adjfig

%%%%%%%%%%%%%%%%%%%%%%%%%% 3. CREATE QQ PLOT %%%%%%%%%%%%%%%%%%%%%%%%%%

[q,s] = qqplot(mc_data);
coefficients = polyfit(q, s, 1);

for i=1:1:length(q)
  qq_line(i,1) = (coefficients(1,1)*q(i,1))+coefficients(1,2);
end

figure(2)
scatter(q,s)
hold on
plot(q(:,1),qq_line(:,1))
title('QQ Plot')
axis("tight")
xlabel('Theoretical quantiles')
ylabel('Sample quantiles')
grid on

%adjfig

%%%%%%%%%%%%%%%%%%% 4. CREATE HISTOGRAM AND QQ PLOT %%%%%%%%%%%%%%%%%%%

figure(3)
subplot(2,1,1)
bar(xx,nn)
title('MC R spread')
axis("tight")
xlabel('R (ohm)')
ylabel('count')
grid on
subplot(2,1,2)
scatter(q,s)
hold on
plot(q(:,1),qq_line(:,1))
title('QQ Plot')
axis("tight")
xlabel('Theoretical quantiles')
ylabel('Sample quantiles')
grid on

%adjfig

%%%%%%%%%%%%%%%%%%%%%%%%%% 5. REPORT DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%

data_mean = mean(mc_data);
data_sig = std(mc_data);
data_sig_dR = sqrt(2)*data_sig;
data_sig_dR_divR_per = (data_sig_dR/data_mean)*100;

disp('STATISTICAL ANALYSIS (basic)')
fprintf('\n');
fprintf('Mean (ohm): %f \n',data_mean);
fprintf('Sigma (ohm): %f \n',data_sig);
fprintf('Sigma_dR (ohm): %f \n',data_sig_dR);
%fprintf('Rnom (ohm): %f \n',typ_data);
fprintf('Sigma_dR/R (per): %f \n',data_sig_dR_divR_per);

%%%%%%%%%%%%%%%%%%%%%%%%%% 7. Art ANALYSIS %%%%%%%%%%%%%%%%%%%%%%%%%%%

% Determine area of DUT
W = 1;
L =  10;
A = W*L;
fprintf('\n');
disp('Art ANALYSIS:')
fprintf('\n');
fprintf('Width (um): %f \n',W);
fprintf('Length (um): %f \n',L);
fprintf('Area (um2): %f \n',A);
% Calculate Art
Art = data_sig_dR_divR_per*sqrt(A);
fprintf('Art (per.um): %f \n',Art);
sig_chk = Art/sqrt(A);
fprintf('Sigma_dR/R_chk (per): %f \n',sig_chk);
fprintf('\n');