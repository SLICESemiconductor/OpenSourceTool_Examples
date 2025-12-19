clear all
close all
clc
warning('off')
pkg load statistics

%%%%%%%%%%%%%%%%%%%%%%%%%% 1. READ IN DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%

mc_data = textread('cap_measures_typ_mc.txt',"%f");
%typ_data = textread('cap_measures.txt',"%f");

%%%%%%%%%%%%%%%%%%%%%%%%%% 2. PLOT HISTOGRAM %%%%%%%%%%%%%%%%%%%%%%%%%%

numBins = 21;

[nn,xx] = hist(mc_data,numBins);

figure(1)
bar(xx,nn)
title('MC C spread')
axis("tight")
xlabel('C (fF)')
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
title('MC C spread')
axis("tight")
xlabel('C (fF)')
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
data_sig_dC = sqrt(2)*data_sig;
data_sig_dC_divC_per = (data_sig_dC/data_mean)*100;

disp('STATISTICAL ANALYSIS (basic)')
fprintf('\n');
fprintf('Mean (fF): %f \n',data_mean*1e15);
fprintf('Sigma (fF): %f \n',data_sig*1e15);
fprintf('Sigma_dC (fF): %f \n',data_sig_dC*1e15);
%fprintf('Rnom (ohm): %f \n',typ_data);
fprintf('Sigma_dC/C (per): %f \n',data_sig_dC_divC_per);

%%%%%%%%%%%%%%%%%%%%%%%%%% 7. Art ANALYSIS %%%%%%%%%%%%%%%%%%%%%%%%%%%

% Determine area of DUT
W = 50;
L =  10;
A = W*L;
fprintf('\n');
disp('Act ANALYSIS:')
fprintf('\n');
fprintf('Width (um): %f \n',W);
fprintf('Length (um): %f \n',L);
fprintf('Area (um2): %f \n',A);
% Calculate Art
Act = data_sig_dC_divC_per*sqrt(A);
fprintf('Act (per.um): %f \n',Act);
sig_chk = Act/sqrt(A);
fprintf('Sigma_dC/C_chk (per): %f \n',sig_chk);
fprintf('\n');