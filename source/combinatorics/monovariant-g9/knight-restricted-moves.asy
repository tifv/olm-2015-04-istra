size(3cm);

draw((0,0)--(5,0)--(5,5)--(0,5)--cycle);

for (int i = 1; i <= 4; i += 1) {
    draw((i, 0)--(i, 5));
    draw((0, i)--(5, i));
}

pen arrowpen = linewidth(2) + gray(0.5);

pair[] moveends = new pair[] {(1.5, 4.5), (3.5, 4.5), (4.5, 3.5), (4.5, 1.5)};

dot((2.5, 2.5), arrowpen+linewidth(4));

for (pair moveend : moveends) {
    draw((2.5, 2.5)--moveend, p=arrowpen, arrow=EndArrow(10));
    dot(moveend, arrowpen+linewidth(4));
}

