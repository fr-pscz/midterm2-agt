set I; # actions 1
set J; # actions 2
set K; # actions opponent

param U{K,I,J};

# strategies
var s1{I} >= 0;
var s2{J} >= 0;

# safety value
var v;

maximize objective: v;


subject to sumToOne1: sum{i in I} s1[i] == 1;
subject to sumToOne2: sum{j in J} s2[j] == 1;

subject to safetyEq{k in K}: v - sum{j in J, i in I} U[k,i,j]*s1[i]*s2[j] <= 0;
