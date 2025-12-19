clear all
close all
clc
warning('off')
pkg load statistics

%%%%%%%%%%%%%%%%%%%%%%%%%% 1. READ IN DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%

% Read in linearised transient data vector from NGSPICE
%mc_data = textread('vth_measures_sde.txt',"%f");
%mc_data = textread('vth_measures_tt_mm.txt',"%f");
mc_data = textread('vth_measures_pmoshv_tt_mc.txt',"%f");
%mc_data = csvread('mc_result2.csv');

%%%%%%%%%%%%%%%%%%%%%%%% 2. POST PROCESS DATA %%%%%%%%%%%%%%%%%%%%%%%%%

% Convert to mV
for i =1:1:length(mc_data)
  mc_data(i,1) = mc_data(i,1)*1e3;
end

%%%%%%%%%%%%%%%%%%%%%%%%%% 3. PLOT HISTOGRAM %%%%%%%%%%%%%%%%%%%%%%%%%%

numBins = 51;

[nn,xx] = hist(mc_data,numBins);

figure(1)
bar(xx,nn)
title('MC vth spread')
axis("tight")
xlabel('vth (mV)')
ylabel('count')
grid on

%adjfig

%%%%%%%%%%%%%%%%%%%%%%%%%% 4. CREATE QQ PLOT %%%%%%%%%%%%%%%%%%%%%%%%%%

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

%%%%%%%%%%%%%%%%%%% 5. CREATE HISTOGRAM AND QQ PLOT %%%%%%%%%%%%%%%%%%%

figure(3)
subplot(2,1,1)
bar(xx,nn)
title('MC vth spread')
axis("tight")
xlabel('vth (mV)')
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

%%%%%%%%%%%%%%%%%%%%%%%%%% 6. REPORT DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%

data_mean = mean(mc_data);
data_std = std(mc_data);

disp('STATISTICAL ANALYSIS (basic)')
fprintf('\n');
fprintf('Mean (mV): %f \n',data_mean);
fprintf('Sigma (mV): %f \n',data_std);

%%%%%%%%%%%%%%%%%%%%%%%%%% 7. Avt ANALYSIS %%%%%%%%%%%%%%%%%%%%%%%%%%%

% Determine area of DUT
wf = 0.3125;
nf = 1;
m = 2;
W = wf*nf*m;
L =  2;
A = W*L;
fprintf('\n');
disp('Avt ANALYSIS:')
fprintf('\n');
fprintf('Width (um): %f \n',W);
fprintf('Length (um): %f \n',L);
fprintf('Area (um2): %f \n',A);
% Calculate Avt
Avt = data_std*sqrt(2*A);
fprintf('Avt (mV.um): %f \n',Avt);
sig_chk = Avt/sqrt(2*A);
fprintf('Sigma_chk (mV): %f \n',sig_chk);
fprintf('\n');

%%%%%%%%%%%%%%%%%%%%%%%% 8. STATISTICAL VARIATION %%%%%%%%%%%%%%%%%%%%%%%%%

% Enter sample number
N = 100;

% Enter confidence level in %
CL = 95;

% Enter sigma:
sig_num = 3;

% Determine the t-value corresponding to CL and N
if CL == 90
  alpha = 0.1;
  if N == 30
    t = 1.669127;
  elseif N == 100
    t = 1.660391;
  elseif N == 200
    t = 1.652547;
  endif

elseif CL == 95
  alpha = 0.05;
  if N == 30
    t = 2.04523;
  elseif N == 100
    t = 1.984217;
  elseif N == 200
    ;
  endif

  elseif CL == 99
  alpha = 0.01;
  if N == 30
    t = 2.756386;
  elseif N == 100
    t = 2.626405;
  elseif N == 200
    t = 2.60076;
  endif
endif

% Determine spread of mean
data_mean_std = data_std/sqrt(N);

% Determine confidence interval for the mean
max_data_mean = data_mean+(t*data_mean_std);
min_data_mean = data_mean-(t*data_mean_std);

%data_std = 0.8074 ... reported std from SDE for same data set; used for verification
%of the below methods to deal with the std of stds 

%Determine spread of std:

%Below uses the gamma function from the below REF:
% https://stats.stackexchange.com/questions/631/standard-deviation-of-standard-deviation
%data_std_std = data_std*(((gamma((N-1)/2))/gamma(N/2))*sqrt(((N-1)/2)-((gamma(N/2)/gamma((N-1)/2))^2)))
%This method was always slightly off from what was reported in SDE and Cadence

%SDE use the inverse chi function from the below REF:
% REF: https://www.graphpad.com/support/faq/the-confidence-interval-of-a-standard-deviation/
max_data_std = data_std*sqrt((N-1)/chi2inv((alpha/2),N-1));
min_data_std = data_std*sqrt((N-1)/chi2inv(1-(alpha/2),N-1));
%This matched the SDE results and presumably would match Cadence results so should
%be used instead of the gamma function method.Theory behind it contained in the 
%book referenced in the above link. 

% Create final values at 'x' sigma including statistical spread of mean and std
MAX_val = max_data_mean+(sig_num*max_data_std);
MIN_val = min_data_mean-(sig_num*max_data_std);

disp('STATISTICAL ANALYSIS:')
fprintf('\n');
fprintf('Confidence Level: %f \n',CL);
fprintf('Sample #: %f \n',N);
fprintf('t-value: %f \n',t);
fprintf('#Sigma: %f \n',sig_num);
fprintf('\n');
%fprintf('mean_std (mV): %f \n',data_mean_std);
fprintf('Max mean (mV): %f \n',max_data_mean);
fprintf('Min mean (mV): %f \n',min_data_mean);
fprintf('\n');
%fprintf('std_std (mV): %f \n',data_std_std);
fprintf('Max std (mV): %f \n',max_data_std);
fprintf('Min std (mV): %f \n',min_data_std);
fprintf('\n');
fprintf('MAX (mV): %f \n',MAX_val);
fprintf('MIN (mV): %f \n',MIN_val);
fprintf('\n');