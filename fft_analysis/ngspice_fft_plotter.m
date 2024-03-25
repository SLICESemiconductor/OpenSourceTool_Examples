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

%%%%%%%%%%%%%%%%%%%%%%%%%% 1. READ IN NGSPICE FFT DATA %%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Read in fft data vector from NGSPICE
fft_data1 = textread('vsquare_fft_data_rec.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_black.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_gauss.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_flat.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_blackmanharris.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_hann.txt',"%f");
%fft_data1 = textread('vsquare_fft_data_bart.txt',"%f");

%%%%%%%%%%%%%%%%%%%%%%%% 2. POST PROCESS FFT DATA %%%%%%%%%%%%%%%%%%%%%%%%

% 2. Remove all "NaN"'s from the data
fft_data2 = fft_data1(~isnan(fft_data1));

% 3. Remove header files which end where the first element = 0
istart = find(fft_data2 == 0,1,'first');
% Place contents from istart:end into a new array
fft_data3 = fft_data2(istart:end,1);

% 4. Sort data into nx2 matrix where col1 = time, col2 = data
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

% 5. fft returns a complex number. Need to find the magnitude of each point
for i=1:1:length(fft_data4)
  fft_data5(i,1) = sqrt((fft_data4(i,1)^2)+(fft_data4(i,2)^2));
  % ngspice data is amplitude corrected so divide by 2 (Hann)/2.3833 (Blackman)
  % to revert
  fft_data6(i,1) = fft_data5(i,1)/1;
end

%%%%%%%%%%%%%%%%%%%%%%%% 3. PLOT / COMPARE FFT DATA %%%%%%%%%%%%%%%%%%%%%%%%

N = (length(fft_data6)*2)-2;
% Set up frequency vector (frequency you linearised the data at in ngspice)
fs = 40e6;
f = 0:fs/N:fs/2;
% Scale to kHz
f = f/1e3;

% 6. Plot the FFT
figure(1)
plot(f,20*log10(fft_data6))
title('ffts')
axis("tight")
xlabel('f (kHz)')
ylabel('|Mag| (dB)')
grid on

adjfig