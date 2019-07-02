function [val] = fib (num)
f1 = 1;
f2 = 1;
for i=1:num
    val = f1;
    fn = f2;
    f2 = f1 + f2;
    f1 = fn;
end
end