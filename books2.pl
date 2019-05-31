% books 2

% books right

:- use_module(library(pce)).

window_size(400,400).

draw_square:-
window_size(MaxX, MaxY),
new(Window, picture('My window')),
send(Window, size, size(MaxX, MaxY)),
send(Window, open),
draw_lines(Window),
C1X is MaxX div 2 + 59,
C1Y is MaxY div 2 - 20,
draw_image(Window, C1X, C1Y, _),
C2X is MaxX div 2 + 109,
C2Y is MaxY div 2 - 20,
draw_image(Window, C2X, C2Y, _),
C3X is MaxX div 2 + 159,
C3Y is MaxY div 2 - 20,
draw_image(Window, C3X, C3Y, _),
C4X is MaxX div 2 + 59,
C4Y is MaxY div 2 + 20,
draw_image(Window, C4X, C4Y, _),
C5X is MaxX div 2 + 109,
C5Y is MaxY div 2 + 20,
draw_image(Window, C5X, C5Y, _),
C6X is MaxX div 2 + 159,
C6Y is MaxY div 2 + 20,
draw_image(Window, C6X, C6Y, _),

C11X is MaxX div 2 - 91,
C11Y is MaxY div 2 - 20,
draw_image(Window, C11X, C11Y, _),
C12X is MaxX div 2 - 141,
C12Y is MaxY div 2 - 20,
draw_image(Window, C12X, C12Y, _),
C13X is MaxX div 2 - 191,
C13Y is MaxY div 2 - 20,
draw_image(Window, C13X, C13Y, _),
C14X is MaxX div 2 - 91,
C14Y is MaxY div 2 + 20,
draw_image(Window, C14X, C14Y, _),
C15X is MaxX div 2 - 141,
C15Y is MaxY div 2 + 20,
draw_image(Window, C15X, C15Y, _),
C16X is MaxX div 2 - 191,
C16Y is MaxY div 2 + 20,
draw_image(Window, C16X, C16Y, _).


draw_lines(Window) :-
window_size(MaxX, MaxY),
X11 is MaxX div 2 + 50,
Y11 is MaxY,
X12 is MaxX div 2 + 50,
Y12 is 0,

send(Window, display, new(Pa, path)),
(
send(Pa, append, point(X11, Y11)),
send(Pa, append, point(X12, Y12))
),

X21 is MaxX div 2 - 50,
Y21 is MaxY,
X22 is X21,
Y22 is 0,

send(Window, display, new(Pa2, path)),
(
send(Pa2, append, point(X21, Y21)),
send(Pa2, append, point(X22, Y22))
).

draw_image(Window, X, Y, Bitmap1):-
send(Window, display,
new(Bitmap1, bitmap('32x32/cannibal.xpm')), point(X,Y)).