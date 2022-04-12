set I; # actions opponent
set J; # actions player

param U2{I,J};

param s1{I};

# strategies
var s2{J} >= 0;

maximize objective: sum{j in J} (sum{i in I} U2[i,j]*s1[i]*s2[j]);

subject to sumToOne2: sum{j in J} s2[j] == 1;
