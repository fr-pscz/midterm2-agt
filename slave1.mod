set I; # actions player
set J; # actions opponent

param U1{I,J};

param s2{J};

# strategies
var s1{I} >= 0;

maximize objective: sum{i in I} (sum{j in J} U1[i,j]*s1[i]*s2[j]);

subject to sumToOne1: sum{i in I} s1[i] == 1;
