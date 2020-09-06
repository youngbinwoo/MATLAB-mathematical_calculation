%%Problem3_19

dvdt=@(v,m,cd) 9.81-(cd/m)*v^2;
odesimp(dvdt,0.5,0,12,-10,70,0.23)
