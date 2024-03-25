close all
clear
clc
format longE
output_precision(7)
warning('off')
% signal package is required to use the Hann function. The below line only loads
% the signal package and thus assumes it is already installed. If not, in the 
% terminal type: sudo apt-get install octave-signal. Alternatively, visit the 
% following link: https://askubuntu.com/questions/239622/how-do-i-install-signal-so-i-can-install-octave
pkg load signal

%%%%%%%%%%%%%%%%%%%%%%%%%% 1. READ IN DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Read in linearised transient data vector from NGSPICE
lin_data1 = textread('vsquare_lin_data.txt',"%f");

%%%%%%%%%%%%%%%%%%%%%%%% 2. POST PROCESS DATA %%%%%%%%%%%%%%%%%%%%%%%%

% 2. Remove all "NaN"'s from the data
lin_data2 = lin_data1(~isnan(lin_data1));

% 3. Remove header files which end where the first element = 0
istart = find(lin_data2 == 0,1,'first');
% Place contents from istart:end into a new array
lin_data3 = lin_data2(istart:end,1);

% 4. Sort data into nx2 matrix where col1 = time, col2 = data
% Time vector
count = 0;
for i = 1:2:length(lin_data3)
  count = count + 1;
  lin_data4(count,1) = lin_data3(i,1);
end
% Data vector
count = 0;
for i = 2:2:length(lin_data3)
  count = count + 1;
  lin_data4(count,2) = lin_data3(i,1);
end

% Note: At this point, data in lin_data4 should match exactly the data outputted
% by ngspice into a txt file (less the NaN and header). Check to be sure it does!

%%%%%%%%%%%%%%%%%%%%%%%% 3. PERFORM THE FFT %%%%%%%%%%%%%%%%%%%%%%%% 

% 5. Create a window of equal length to the data
%fft_win=hann(length(lin_data4(:,2)));
%fft_win=blackmanharris(length(lin_data4(:,2)));
%fft_win=blackman(length(lin_data4(:,2)));
%fft_win=bartlett(length(lin_data4(:,2)));
fft_win=rectwin(length(lin_data4(:,2)));
%fft_win=gausswin(length(lin_data4(:,2)));
%fft_win=flattopwin(length(lin_data4(:,2)));

% 6. Multiply the data by the window (i.e. window the data)
win_data = fft_win.*lin_data4(:,2);

% Plots to analyse windowing
figure(1)
subplot(3,1,1)
plot(lin_data4(:,2))
axis("tight")
xlabel('sample (#)')
ylabel('Amplitude (V)')
title('Time domain view of linearised data')
grid on
subplot(3,1,2)
plot(fft_win)
axis("tight")
xlabel('sample (#)')
ylabel('Amplitude (V)')
title('Time domain view of chosen window function')
grid on
subplot(3,1,3)
plot(win_data)
axis("tight")
xlabel('sample (#)')
ylabel('Amplitude (V)')
title('Time domain view of windowed data')
grid on

% uncomment the below line to see spectral leakage (removes windowing)
%win_data = lin_data4(:,2);

% 7. Create the FFT
%win_data = hann_win;
Y = fft(win_data);

% normalise to N (=fft length)
FFT_res = 17;
% Number of FFT points
N = length(Y);
P2 = abs(Y/N);
% only look at 1 half of the data (i.e. single sided FFT)
P1 = P2(1:N/2+1);
% multiply that half by 2 i.e. fold frequency axis across the origin taking
% care not to include the DC term (which is unique and so wont get multiplied)
P1(2:end-1) = 2*P1(2:end-1);
% Set up frequency vector (frequency you linearised the data at in ngspice)
fs = 40e6;
f = 0:fs/N:fs/2;
% Scale to kHz
f = f/1e3;

% 8. Plot the FFT
figure(2)
% Use this line if you want to plot magnitude in V
%plot(f,P1)
% Use this line if you want to plot magnitude in dB (reccomended)
plot(f,20*log10(P1))
%semilogx(f,20*log10(P1))
title('FFT input sine wave')
axis("tight")
xlabel('f (kHz)')
ylabel('|Mag| (dB)')
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%% 4. READ IN NGSPICE FFT DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%

% 10. Read in fft data vector from NGSPICE
fft_data1 = textread('vsquare_fft_data_rec.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_black.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_gauss.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_flat.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_blackmanharris.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_hann.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_bart.txt',"%f");

%%%%%%%%%%%%%%%%%%%%%%%% 5. POST PROCESS FFT DATA %%%%%%%%%%%%%%%%%%%%%%%%

% 11. Remove all "NaN"'s from the data
fft_data2 = fft_data1(~isnan(fft_data1));

% 12. Remove header files which end where the first element = 0
istart = find(fft_data2 == 0,1,'first');
% Place contents from istart:end into a new array
fft_data3 = fft_data2(istart:end,1);

% 13. Sort data into nx2 matrix where col1 = time, col2 = data
% Real component
count = 0;
for i = 2:3:length(fft_data3)
  count = count + 1;
  fft_data4(count,1) = fft_data3(i,1);
end
% Imaginary component
count = 0;
for i = 3:3:length(fft_data3)
  count = count + 1;
  fft_data4(count,2) = fft_data3(i,1);
end

% Note: At this point, data in lin_data4 should match exactly the data outputted
% by ngspice into a txt file (less the NaN and header). Check to be sure it does!

% 14. fft returns a complex number. Need to find the magnitude of each point
for i=1:1:length(fft_data4)
  fft_data5(i,1) = sqrt((fft_data4(i,1)^2)+(fft_data4(i,2)^2));
  % ngspice data is amplitude corrected so divide by 2 (Hann)/2.3833 (Blackman)
  % to revert
  fft_data6(i,1) = fft_data5(i,1)/1;
end

%%%%%%%%%%%%%%%%%%%%%%%% 6. PLOT / COMPARE FFT DATA %%%%%%%%%%%%%%%%%%%%%%%%

% 8. Plot the FFT
figure(3)
% Use this line if you want to plot magnitude in V
%plot(f,P1)
% Use this line if you want to plot magnitude in dB (reccomended)
plot(f,20*log10(P1))
%hold on
%plot(f,20*log10(fft_data5))
hold on
plot(f,20*log10(fft_data6))
%semilogx(f,20*log10(P1))
title('ffts')
axis("tight")
xlabel('f (kHz)')
ylabel('|Mag| (dB)')
legend('Octave','ngspice')
grid on

adjfig