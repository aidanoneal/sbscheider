%Input
prompt = 'What is the Period of the Satellite?';
T = input(prompt);

% Define constants: earth radius, G, earth mass
R = 6.371*10^6; 
G = 6.67*10^(-11);
M = 5.98*10^(24);

T =T*60; % convert to sec 
h = (G*M*T^2/(4*pi^2))^(1/3)-R; %height in meters
h = round(h/1000,0) %convert answer to Kilometers and round to nearest integer


V = sqrt((G * M)/(R + (h * 1000))); %calculate velocity at respective h

V = round(V,0) %round to nearest integer

