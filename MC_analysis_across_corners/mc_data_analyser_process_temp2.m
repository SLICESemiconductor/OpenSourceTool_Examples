clear all
close all
clc
warning('off')
pkg load statistics
%%%%%%%%%%%%%%%%%%%%%%%%%% 1. READ IN DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%

% Count all the ac_measures files
p=dir('vth_measures*');
N=length(p);
A = cell(1,N); 

% Place the contents of each file into a cell array
for k=1:N
    fid = fopen(p(k).name,'r');    
    A{k} = cell2mat(textscan(fid));
    fclose(fid);    
end
% Lump all the cell array data into a single matrix
for j=1:N
    MC_data(:,j) = A{j};    
end

%%%%%%%%%%%%%%%%%%%%%%%% 2. POST PROCESS DATA %%%%%%%%%%%%%%%%%%%%%%%%%

% Convert to mV
MC_data(2:end,:) = MC_data(2:end,:)*1e3;

%%%%%%%%%%%%%%%%%%%%%%%%%% 3. REPORT DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%
%MC_data_stats = zeros(6,N);
for j=1:N
    % row 1 = corner id
    MC_data_stats(1,j) = MC_data(1,j); 
    % row 2 = base mean
    MC_data_stats(2,j) = mean(MC_data(2:end,j)); 
    % row 3 = base std
    MC_data_stats(3,j) = std(MC_data(2:end,j));    
end

%data_mean = mean(MC_data);
%data_std = std(MC_data);

%disp('STATISTICAL ANALYSIS (basic)')
%fprintf('\n');
%fprintf('Mean (mV): %f \n',data_mean);
%fprintf('Sigma (mV): %f \n',data_std);

%%%%%%%%%%%%%%%%%%%%%%%% 8. STATISTICAL VARIATION %%%%%%%%%%%%%%%%%%%%%%%%%

% Enter sample number
numSamp = 30;

% Enter confidence level in %
CL = 95;

% Enter sigma:
sig_num = 6;

% Determine the t-value corresponding to CL and N
if CL == 90
  alpha = 0.1;
  if numSamp == 30
    t = 1.669127;
  elseif numSamp == 100
    t = 1.660391;
  elseif numSamp == 200
    t = 1.652547;
  endif

elseif CL == 95
  alpha = 0.05;
  if numSamp == 30
    t = 2.04523;
  elseif numSamp == 100
    t = 1.984217;
  elseif numSamp == 200
    ;
  endif

  elseif CL == 99
  alpha = 0.01;
  if numSamp == 30
    t = 2.756386;
  elseif numSamp == 100
    t = 2.626405;
  elseif numSamp == 200
    t = 2.60076;
  endif
endif

for j=1:N
    % row 4 = spread of the mean
    MC_data_stats(4,j) = MC_data_stats(3,j)/sqrt(numSamp);
    % row 5 = max mean
    MC_data_stats(5,j) = MC_data_stats(2,j)+(t*MC_data_stats(3,j));
    % row 6 = min mean
    MC_data_stats(6,j) = MC_data_stats(2,j)-(t*MC_data_stats(3,j));
    % row 7 = max stdev
    MC_data_stats(7,j) = MC_data_stats(3,j)*sqrt((numSamp-1)/chi2inv((alpha/2),numSamp-1));
    % row 8 = min stdev
    MC_data_stats(8,j) = MC_data_stats(3,j)*sqrt((numSamp-1)/chi2inv(1-(alpha/2),numSamp-1));
    % row 9 = MAX VAL
    MC_data_stats(9,j) = MC_data_stats(5,j)+(sig_num*MC_data_stats(7,j));
    % row 10 = MIN VAL
    MC_data_stats(10,j) = MC_data_stats(6,j)-(sig_num*MC_data_stats(7,j));
end

max_max_val = max(MC_data_stats(9,:));
min_min_val = min(MC_data_stats(10,:));

disp('STATISTICAL ANALYSIS SUMMARY:')
fprintf('\n');
fprintf('Confidence Level: %f \n',CL);
fprintf('Sample #: %f \n',numSamp);
fprintf('t-value: %f \n',t);
fprintf('#Sigma: %f \n',sig_num);
fprintf('\n');
fprintf('Max val across process and MC (linearised) (mV): %f \n',max_max_val);
fprintf('Min val across process and MC (linearised) (mV): %f \n',min_min_val);
fprintf('\n');
fprintf('Raw data:');
MC_data_stats
Data_Table = sortrows(MC_data_stats');


% Write the data to an output csv file
fileID = fopen('MC_across_process_results.csv','w');
% Create the header
fprintf(fileID,'%s %s %s %s %s %s %s %s %s %s\n','CornerID','BaseMean','BaseStd','StdOfMean','MaxMean','MinMean','MaxStd','MinStd','MaxVal','MinVal');
% Annotate the PVT data
fprintf(fileID,'%6.4e %6.4e %6.4e %6.4e %6.4e %6.4e %6.4e %6.4e %6.4e %6.4e\n',Data_Table');
fclose(fileID);