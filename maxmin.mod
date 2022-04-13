set I; # player 1 actions
set J; # player 2 actions

param U{I,J};

var s{I} >= 0;
var v;

maximize objective: v;

subject to safetyLeq{j in J}: v - sum{i in I} U[i,j] * s[i] <= 0;
subject to sumToOne: sum{i in I} s[i] = 1;
