set P; # players = [1 2]
set I; # actions 1
set J; # actions 2

param U1{I,J};
param U2{I,J};

param M{P}; # large positive number

# strategies
var s1{I} >= 0;
var s2{J} >= 0;

# support variables
var b1{I} binary;
var b2{J} binary;

# safety values
var v{P};

# It's not necessary to specify an objective, however, different objectives may
# potentially lead to different Nash equilibria. This objective maximizes total
# welfare
maximize objective: v[1] + v[2];

# Constraints
subject to safetyGeq1{i in I}: v[1] - sum{j in J} (U1[i,j]*s2[j]) >= 0;
subject to safetyGeq2{j in J}: v[2] - sum{i in I} (U2[i,j]*s1[i]) >= 0;


subject to sumToOne1: sum{i in I} s1[i] == 1;
subject to sumToOne2: sum{j in J} s2[j] == 1;

subject to supportLeq1{i in I}: s1[i] - b1[i] <= 0;
subject to supportLeq2{j in J}: s2[j] - b2[j] <= 0;

subject to safetyEq1{i in I}:
    v[1] - sum{j in J} (U1[i,j]*s2[j]) - M[1]*(1-b1[i]) <= 0;
subject to safetyEq2{j in J}:
    v[2] - sum{i in I} (U2[i,j]*s1[i]) - M[2]*(1-b2[j]) <= 0;
