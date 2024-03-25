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

% Reference for CG and ACF's for each window is:
% [1] On the use of window for harmonic analysis wiht the DFT, Harris, Jan. '78

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
%fft_win=rectwin(length(lin_data4(:,2)));
%fft_win=bartlett(length(lin_data4(:,2)));
%fft_win=hann(length(lin_data4(:,2)));
%fft_win=blackman(length(lin_data4(:,2)));
% Note: blackmanharris corresponds to a 4 term blackmanharris window
fft_win=blackmanharris(length(lin_data4(:,2)));

% 6. Multiply the data by the window (i.e. window the data)
win_data = fft_win.*lin_data4(:,2);
%win_data = lin_data4(:,2);

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

% 7. Create the FFT
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
title('FFT plot (not amplitude or energy corrected)')
axis("tight")
xlabel('f (kHz)')
ylabel('|Mag| (dB)')
grid on

% 9. If you want to amplitude correct
% Set the amplitude correction factor (ACF) according to the chosen window.
% The coherant gains (CG) for each window are provided in Table 1 of [1]
% => ACF = 1/CG
% Window = none (or you simply don't want to AC): CG = 1 => ACF = 1
% Window = Hann: CG = 0.5 => ACF = 2 
% Window = Blackman: CG =0.42 => ACF = 2.381 (not 2.8!)
% Window = Blackmanharris(4term): CG =0.36 => ACF = 2.778 (not 2.8!)

% Assuming the max component is the signal, simply find that amplitude correct
% only it

% first move all the contents of P1 into new array which can be manipulated
for i=1:1:length(P1)
  P1_scaled(i,1) = P1(i,1);
end

% find the max signal level 
sig_max = max(P1);


CG = 0.36
ACF = 1/CG
for i=1:1:length(P1)
  P1_AC(i,1) = P1(i,1)*ACF;
end

% 10. Plot the FFT
figure(3)
% Use this line if you want to plot magnitude in V
%plot(f,P1)
% Use this line if you want to plot magnitude in dB (reccomended)
plot(f,20*log10(P1_AC))
%semilogx(f,20*log10(P1))
title('FFT plot (amplitude corrected)')
axis("tight")
xlabel('f (kHz)')
ylabel('|Mag| (dB)')
grid on

