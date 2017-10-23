function output = digit()

p0 = [ -1; 1; 1; 1; 1; -1; 1; -1; -1; -1; -1; 1; 1; -1; -1; -1; -1; 1; 1; -1; -1; -1; -1; 1; -1; 1; 1; 1; 1; -1]; 
p1 = [ -1; -1; -1; -1; -1; -1; 1; -1; -1; -1; -1; -1; 1; 1; 1; 1; 1; 1; -1; -1; -1; -1; -1; -1; -1; -1; -1; -1; -1; -1]; 
p2 = [ 1; -1; -1; -1; -1; -1; 1; -1; -1; 1; 1; 1; 1; -1; -1; 1; -1; 1; -1; 1; 1; -1; -1; 1; -1; -1; -1; -1; -1; 1]; 
p3 = [ 1; -1; -1; -1; -1; 1; 1; -1; -1; -1; -1; 1; 1; -1; 1; 1; -1; 1; 1; -1; 1; 1; -1; 1; -1; -1; -1; -1; -1; -1]; 
p4 = [ -1; -1; -1; -1; -1; -1; 1; 1; 1; -1; -1; -1; -1; -1; 1; -1; -1; -1; -1; -1; 1; -1; -1; -1; 1; 1; 1; 1; 1; 1 ]; 
p5 = [ 1; 1; 1; -1; -1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; 1; 1; 1 ]; 
p6 = [ 1; 1; 1; 1; 1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; -1; -1; 1; 1; -1; 1; 1; 1; 1; -1; -1; -1; -1; -1; -1; ];

t0 = p0;
t1 = p1;
t2 = p2;
t3 = p3;
t4 = p4;
t5 = p5;
t6 = p6;


w0 = t0 * transpose(p0);
w1 = t1 * transpose(p1);
w2 = t2 * transpose(p2);
w3 = t3 * transpose(p3);
w4 = t4 * transpose(p4);
w5 = t5 * transpose(p5);
w6 = t6 * transpose(p6);


inputs = [p0, p1, p2, p3, p4, p5, p6];
outputs = [t0, t1, t2, t3, t4, t5, t6];
weights = [w0, w1, w2, w3, w4, w5, w6];
correct = [false, false, false, false, false, false, false];
error = zeros(10);


r = randi([0 30]);

if p0(r) == -1
    p0(r) = 1
else
    p0(r) = -1
end

if p1(r) == -1
    p1(r) = 1
else
    p1(r) = -1
end

if p2(r) == -1
    p2(r) = 1
else
    p2(r) = -1
end

if p3(r) == -1
    p3(r) = 1
else
    p3(r) = -1
end

if p4(r) == -1
    p4(r) = 1
else
    p4(r) = -1
end

if p5(r) == -1
    p5(r) = 1
else
    p5(r) = -1
end

if p6(r) == -1
    p6(r) = 1
else
    p6(r) = -1
end

%for i = 1:7
 %   temp = hardlims(inputs(:,(i)) * weights(:,(i)));
 %   if temp == outputs(:,(i))
 %       correct(i) = true;
 %   end
%end

temp = hardlims(w0*p0);
if temp == t0
    correct(1) = true;
end

temp = hardlims(w1*p1);
if temp == t1
    correct(2) = true;
end

temp = hardlims(w2*p2);
if temp == t2
    correct(3) = true;
end

temp = hardlims(w3*p3);
if temp == t3
    correct(4) = true;
end

temp = hardlims(w4*p4);
if temp == t4
    correct(5) = true;
end

temp = hardlims(w5*p5);
if temp == t5
    correct(6) = true;
end

temp = hardlims(w6*p6);
if temp == t6
    correct(7) = true;
end


for i = 1:7
    if correct(i) == false
        error(1) = error(1) + 1;
    end
end


r = randi([0 30],1,1);

if p0(r) == -1
    p0(r) = 1
else
    p0(r) = -1
end

if p1(r) == -1
    p1(r) = 1
else
    p1(r) = -1
end

if p2(r) == -1
    p2(r) = 1
else
    p2(r) = -1
end

if p3(r) == -1
    p3(r) = 1
else
    p3(r) = -1
end

if p4(r) == -1
    p4(r) = 1
else
    p4(r) = -1
end

if p5(r) == -1
    p5(r) = 1
else
    p5(r) = -1
end

if p6(r) == -1
    p6(r) = 1
else
    p6(r) = -1
end
   

temp = hardlims(w0*p0);
if temp == t0
    correct(1) = true;
end

temp = hardlims(w1*p1);
if temp == t1
    correct(2) = true;
end

temp = hardlims(w2*p2);
if temp == t2
    correct(3) = true;
end

temp = hardlims(w3*p3);
if temp == t3
    correct(4) = true;
end

temp = hardlims(w4*p4);
if temp == t4
    correct(5) = true;
end

temp = hardlims(w5*p5);
if temp == t5
    correct(6) = true;
end

temp = hardlims(w6*p6);
if temp == t6
    correct(7) = true;
end



for i = 1:7
    if correct(i) == false
        error(2) = error(2) + 1;
    end
end


r = randi([0 30],1,1);

if p0(r) == -1
    p0(r) = 1
else
    p0(r) = -1
end

if p1(r) == -1
    p1(r) = 1
else
    p1(r) = -1
end

if p2(r) == -1
    p2(r) = 1
else
    p2(r) = -1
end

if p3(r) == -1
    p3(r) = 1
else
    p3(r) = -1
end

if p4(r) == -1
    p4(r) = 1
else
    p4(r) = -1
end

if p5(r) == -1
    p5(r) = 1
else
    p5(r) = -1
end

if p6(r) == -1
    p6(r) = 1
else
    p6(r) = -1
end

r = randi([0 30],1,1);

   
if p0(r) == -1
    p0(r) = 1
else
    p0(r) = -1
end

if p1(r) == -1
    p1(r) = 1
else
    p1(r) = -1
end

if p2(r) == -1
    p2(r) = 1
else
    p2(r) = -1
end

if p3(r) == -1
    p3(r) = 1
else
    p3(r) = -1
end

if p4(r) == -1
    p4(r) = 1
else
    p4(r) = -1
end

if p5(r) == -1
    p5(r) = 1
else
    p5(r) = -1
end

if p6(r) == -1
    p6(r) = 1
else
    p6(r) = -1
end

temp = hardlims(w0*p0);
if temp == t0
    correct(1) = true;
end

temp = hardlims(w1*p1);
if temp == t1
    correct(2) = true;
end

temp = hardlims(w2*p2);
if temp == t2
    correct(3) = true;
end

temp = hardlims(w3*p3);
if temp == t3
    correct(4) = true;
end

temp = hardlims(w4*p4);
if temp == t4
    correct(5) = true;
end

temp = hardlims(w5*p5);
if temp == t5
    correct(6) = true;
end

temp = hardlims(w6*p6);
if temp == t6
    correct(7) = true;
end

for i = 1:7
    if correct(i) == false
        error(3) = error(3) + 1;
    end
end

r = randi([0 30],1,1);

if p0(r) == -1
    p0(r) = 1
else
    p0(r) = -1
end

if p1(r) == -1
    p1(r) = 1
else
    p1(r) = -1
end

if p2(r) == -1
    p2(r) = 1
else
    p2(r) = -1
end

if p3(r) == -1
    p3(r) = 1
else
    p3(r) = -1
end

if p4(r) == -1
    p4(r) = 1
else
    p4(r) = -1
end

if p5(r) == -1
    p5(r) = 1
else
    p5(r) = -1
end

if p6(r) == -1
    p6(r) = 1
else
    p6(r) = -1
end

r = randi([0 30],1,1);

   
if p0(r) == -1
    p0(r) = 1
else
    p0(r) = -1
end

if p1(r) == -1
    p1(r) = 1
else
    p1(r) = -1
end

if p2(r) == -1
    p2(r) = 1
else
    p2(r) = -1
end

if p3(r) == -1
    p3(r) = 1
else
    p3(r) = -1
end

if p4(r) == -1
    p4(r) = 1
else
    p4(r) = -1
end

if p5(r) == -1
    p5(r) = 1
else
    p5(r) = -1
end

if p6(r) == -1
    p6(r) = 1
else
    p6(r) = -1
end

temp = hardlims(w0*p0);
if temp == t0
    correct(1) = true;
end

temp = hardlims(w1*p1);
if temp == t1
    correct(2) = true;
end

temp = hardlims(w2*p2);
if temp == t2
    correct(3) = true;
end

temp = hardlims(w3*p3);
if temp == t3
    correct(4) = true;
end

temp = hardlims(w4*p4);
if temp == t4
    correct(5) = true;
end

temp = hardlims(w5*p5);
if temp == t5
    correct(6) = true;
end

temp = hardlims(w6*p6);
if temp == t6
    correct(7) = true;
end


for i = 1:7
    if correct(i) == false
        error(3) = error(3) + 1;
    end
end

output = error;
   

   