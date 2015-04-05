import geometry;

size(7cm);

point C = (0,0), A = (6, 16), B = (16, 0), P = (7, 6);

triangle ABC = triangle(A, B, C);

assert(abs(A-C) > abs(B-C));
assert(abs(A-B) > abs(A-C));

line ap = parallel(P, line(B, C));

point
    Bp = intersectionpoint(ap, line(A, B)),
    Cp = intersectionpoint(ap, line(A, C));

draw(ABC, linewidth(1));

draw(P--A ^^ P--B ^^ P--C, linewidth(1));

draw(Bp--Cp);

label("$a$", (B+C)/2, S);
label("$b$", (C+A)/2, unit(C-A)/I);
label("$c$", (A+B)/2, unit(A-B)/I);
label("$m$", (P+A)/2, unit(A-P)/I);
label("$k$", (P+C)/2, unit(C-P)*I);
label("$l$", (P+B)/2, unit(B-P)/I);
label("$p$", (1.5Cp+P)/2.5, S);
label("$q$", (1.5Bp+P)/2.5, S);
label("$b'$", (1.5Cp+A)/2.5, unit(C-A)*I);
label("$b''$", (1.5Cp+C)/2.5, unit(C-A)*I);
label("$c'$", (1.5Bp+A)/2.5, unit(A-B)*I);
label("$c''$", (1.5Bp+B)/2.5, unit(A-B)*I);

