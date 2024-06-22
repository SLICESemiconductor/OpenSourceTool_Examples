clear
clc

% Count all the ac_measures files
p=dir('ac_measures*');
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
    PVT_data(:,j) = A{j};    
end

% Transpose the data (including headers to make the matrix more readable)
fprintf('%s %s %s %s %s\n','    Av0_dB','   BW_kHz','      GBW_MHz','   PM_deg','   GM_dB');
PVT_dataT = PVT_data'
% Sort the data in ascending order
PVT_data_sorted = sort(PVT_dataT);
% Including headers to make the following measures more readable)
fprintf('%s %s %s %s %s\n','    Av0_dB','   BW_kHz','  GBW_MHz','   PM_deg','   GM_dB');
% Place the min of each col into its own matrix
minData = PVT_data_sorted(1,:)
% Place the max of each col into its own matrix
maxData = PVT_data_sorted(end,:)
% Place the absolute delta of each col into its own matrix
absvarData = maxData .-minData
% Place the relative spread of each col into its own matrix (+/- %)
for i=1:1:5
  relvarData(1,i) = ((2*(maxData(1,i)-minData(1,i)))/(maxData(1,i)+minData(1,i)))*50;
end
relvarData

% NOTE: The above statements plot out the min/max/absvar/relvar data for each col
% If the user wants to determine the corner which a particular value comes from 
% they must execute the following line in the terminal:

% find ./ -type f -name "ac_measures*" -exec grep -l 'pattern'  {} \;

% "pattern" stands for the measure whose originating corner we want to identify.
% E.g. PM_min = 45.6079. I want to identify the corner which produces PM_min. I
% go to the Linux terminal window (not the one in Matlab) and type:

% find ./ -type f -name "ac_measures*" -exec grep -l '45.6079'  {} \;

% This looks in all the ac_measures files and returns the name of the file 
% containing 45.6079. Since the PVT tcl script names the ac_measures files according
% to their corner conditions, the name will tell which corner a particular value
% occured on. Might seem a round about way but is very quick to do. Just be 
% careful to take the min/max/absvar/relvar data from the octave script and not
% the csv file. This is because loffice rounds everything to 3 decimal places. As
% a result, the csv data will be slightly different than that output by ngspice,
% and saved in the ac_measures files. This is because ngspice uses 6 digits by 
% default (and I couldnt change that!). As a result, there will be many instances
% where the find command returns nothing as it can't match the 3 decimal place number 
% from the csv file with the 6 digit original one output by ngspice. Again, seems
% a bit long-winded but once you know of this limitation, you are fine. 

% Write the data to an output csv file
fileID = fopen('PVT_results.csv','w');
% Create the header
fprintf(fileID,'%s %s %s %s %s\n','Av0_dB','BW_kHz','GBW_MHz','PM_deg','GM_dB');
% Annotate the PVT data
fprintf(fileID,'%6.4e %6.4e %6.4e %6.4e %6.4e\n',PVT_data);
% Create the header for the min data
fprintf(fileID,'%s %s %s %s %s\n','','','','','');
fprintf(fileID,'%s %s %s %s %s\n','MIN','MIN','MIN','MIN','MIN');
% Annotate the minData
fprintf(fileID,'%6.4e %6.4e %6.4e %6.4e %6.4e\n',minData);
% Create the header for the max data
fprintf(fileID,'%s %s %s %s %s\n','MAX','MAX','MAX','MAX','MAX');
% Annotate the maxData
fprintf(fileID,'%6.4e %6.4e %6.4e %6.4e %6.4e\n',maxData);
% Create the header for the absvar data
fprintf(fileID,'%s %s %s %s %s\n','absvar','absvar','absvar','absvar','absvar');
% Annotate the absvarData
fprintf(fileID,'%6.4e %6.4e %6.4e %6.4e %6.4e\n',absvarData);
% Create the header for the absvar data
fprintf(fileID,'%s %s %s %s %s\n','relvar_pmper','relvar_pmper','relvar_pmper','relvar_pmper','relvar_pmper');
% Annotate the relvarData
fprintf(fileID,'%6.4e %6.4e %6.4e %6.4e %6.4e\n',relvarData);
fclose(fileID);

% NOTE: To open the PVT_results.csv file, simply go to the terminal and type:

% loffice PVT_results.csv

% Use space as a seperator and the csv data will contain all the above numbers
% but rounded to 3 decimal places



% Plots to analyse windowing
figure(1)
subplot(1,5,1)
plot(PVT_dataT(:,1))
axis("tight")
xlabel('corner #')
ylabel('Av0 (dB)')
title('Av0 across PVT')
grid on
subplot(1,5,2)
plot(PVT_dataT(:,2))
axis("tight")
xlabel('corner #')
ylabel('BW (kHz)')
title('BW across PVT')
grid on
subplot(1,5,3)
plot(PVT_dataT(:,3))
axis("tight")
xlabel('corner #')
ylabel('GBW (MHz)')
title('GBW across PVT')
grid on
subplot(1,5,4)
plot(PVT_dataT(:,4))
axis("tight")
xlabel('corner #')
ylabel('PM (deg)')
title('PM across PVT')
grid on
subplot(1,5,5)
plot(PVT_dataT(:,5))
axis("tight")
xlabel('corner #')
ylabel('GM (dB)')
title('GM across PVT')
grid on

adjfig