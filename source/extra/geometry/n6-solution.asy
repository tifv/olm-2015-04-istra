import geometry;

real size = 7cm;
size(size);
var mr = size / 13;

point B = (0, 0), C = (5, 0), A = (2, 7);

triangle ABC = triangle(A, B, C);

point
    I = incenter(ABC),
    I_B = excenter(ABC.AC),
    I_C = excenter(ABC.AB),
    B_1 = bisectorpoint(ABC.AC),
    C_1 = bisectorpoint(ABC.AB);

circle circumABC = circumcircle(ABC);

point B_0 = (I + I_B) / 2, C_0 = (I + I_C) / 2;

point[] MN_set = intersectionpoints(circumABC, line(B_1, C_1));
point M = MN_set[0], N = MN_set[1];

pen gray = gray(0.7);

draw(circumABC, gray+linewidth(1));
draw(circumcircle(A, B, I), gray(0.85)+linewidth(1));
draw(circumcircle(A, C, I), gray(0.85)+linewidth(1));
clipdraw(circumcircle(I, I_B, I_C), gray+linewidth(1));

draw(ABC, linewidth(1));

draw(B--I_B ^^ C--I_C ^^ M--N);

markangle(A, C, I, n=1, radius=mr);
markangle(I, C, B, n=1, radius=0.8mr);

markangle(C, B, I, n=2, radius=mr);
markangle(I, B, A, n=2, radius=0.8mr);

dot(Label("$A$", A, 2.0plain.N));
dot(Label("$B$", B, plain.SSW));
dot(Label("$C$", C, plain.SSE));
dot(Label("$M$", M, plain.SW));
dot(Label("$N$", N, plain.SE));
dot(Label("$I$", I, 1.5plain.S));
dot(Label("$B_0$", B_0, 1.5plain.N+plain.NNE));
dot(Label("$C_0$", C_0, 1.5plain.N+plain.NW));
dot(Label("$B_1$", B_1, 1.7plain.N+plain.NE));
dot(Label("$C_1$", C_1, plain.N+plain.NW));
dot(Label("$I_B$", I_B, plain.E));
dot(Label("$I_C$", I_C, plain.WSW));

