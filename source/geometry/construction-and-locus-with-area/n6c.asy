import geometry;

size(3cm);

circle circAC = circle((point) (0,0), 1);

real dirA = 90, dirC = -30;

point
    A = angpoint(circAC, dirA),
    C = angpoint(circAC, dirC),
    B = (-0.6, 0.0);

path AC = arc(circAC, dirA, dirC, direction=CW);

draw(C--B--A & AC & cycle);

dot(Label("$A$", A, N));
dot(Label("$B$", B, SSW));
dot(Label("$C$", C, S));

