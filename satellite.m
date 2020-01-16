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


%The earth rotates 360 degrees every sidereal day, so the satellite should
%revolve around in one sidereal day also to stay in line with the earths
%rotation.

%sidereal days are in relation to a specific distant star where as solar
%days just measures from when the sun is at the highest point in the sky.
%so noon to noon or 24 hours. A sidereal day is just 23 hours and 56 mins.

Siderealh = (G*M*(23*3600 + 56*60)^2 / (4*pi^2))^(1/3)-R; %calc sidereal h

Siderealh = Siderealh

Solarh = (G*M*(24*3600)^2 / (4*pi^2))^(1/3)-R; %calc solar h

Solarh = Solarh

Deltah = Solarh - Siderealh; %calculate difference in hieghts        

Deltah = round(Deltah/1000,0)%convert to kilometers and round to nearest integer.

