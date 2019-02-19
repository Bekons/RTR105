%% Ievads simboliskajā matemātikā 
%% piemērs
syms a11 a12 a21 a22
A = [a11 a12 ; a21 a22];
syms b11 b12 b21 b22
B = [b11 b12 ; b21 b22];
C = A * B
D=A.*B
%% Simbolisko mainīgo definēšana
%1. variants
x = sym('x'); % šinī rindā tiek definēts simboliskais mainīgais x
sqrt(x^2)
x = sym('x', 'positive'); % pardefinēsim tagad x būs lielāks par 0
sqrt(x^2)
% 2. variants
syms a b c d
A = [a b ; c d];
%matricai pielietosim 'zīmi, kas nozīm'ē transponēšanu kā arī kompleksam
%matricām matricām tā zīmē nozīmē ka elementi bus kompleksi sa9stīti
A'
% conj nozimē kompleksi saistītais
syms a b c d real %(a,b,c,d nav kompleksie)
A= [a b; c d];
A'
% 3. veids kā definēt simboliskos ainnigos
A= sym('a', [2 2])
%tas ļauj mums uzreiz definēt matrccu. 
%% atvasināšana
syms x 
y=x^2;
diff(y)
%%
syms x z
y=X^2*Z^3
%norādīsim pēc kā atvasināt
diff(x,y) % funkciju y atvasin;asim
diff(x,y) 
%%
% integrēšana
syms x
y = 2*x;
int(y,x) % Intigrrēsim funkciju y pēc x
%% Noteiktais integrālis
% 1. piemērs
% funkcija y=x, integrēšanas robežas
%no - līdz 3
syms x
y = x;
int (y, x, 0, 3)
% 2. piemērs
y = x^2;
int(y,x,-3,3)
%% Vienadojuu risināšana
syms x
% atrisināsim kvadrātvienādojumu
% x^2 -5*x +6 (sakne ir 2 un  4
solve(x^2 - 5 * x +6== x)
%% vienādojumu sistēmu risināšana
% risināsim x-3=-3 un 2x2y = 14
% x = 2;y = 5
syms x y 
xy=solve(y-x==-3,2*x+2*y==14,[x,y])
% atbilde ir struktuias veidā 
%pie xvar tikt rakstot struktūras nosaukumu (šoreiz xy) . x
xy.x
xy.y
%% izteiksmju vienkāršošana
% pieņemsi  kā mums ir kāda izteiksme
syms x
z=diff ((x-1)*(x-2)^2/(x-3))
simplify(z)
%% izteiksmju pārveidošana
syms x
y=(x-1) *x-2;
z= expand(y)
% pretējā darbība expand
factor(z)
% pārveidot pēc hornera shēmas
horner(z)
%% Rezultātu grafiska attelošana

syms x
z=diff ((x-1)*(x-2)^2/(x-3))
ezplot(z)
%% rezultātu grafiskā attelošana
% tā būs jādara 2. labratorijas darbā
% dots y = x^2-5*x
% ir jāatrod y' (atvasināums)
% ir jāuzzīmē izteiksme un 
% rezultāts intervālā [-3 līdz 3]
%% Risinājums
%% 1. definēsim simboliskos mainīgos
syms x
y = x^2-5*x;
yd = diff(y)
%% definēsim x kā vektor intervālā no [-3 līdz 3] 
x= -3:0.01:3;
%% 3. izteiksmju vektorizācija 
% (visur ieliekam punktiņus)
yv = vectorize(y)
ydv = vectorize(yd)
%% 4. interpretēsim izteiksmes
% to varētu iztarīt ar copy paste
yn = eval(yv);
ydn = eval(ydv);
%% 5. zimēsim ar plot funkciju
plot(x,yn,x, ydn)
%% 6. grafika anotācija
% pārtulkosim formulas uz latex valodu
yltx = latex(y)
ydltx = latex(yd)
h = legend(['$', yltx, '$'] , ['$', ydltx, '$'])
set(h, 'Interpreter', 'Latex')