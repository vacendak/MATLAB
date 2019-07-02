function [res] = suma(razon, num)

res = 1;
for i = 1:num
    res = res + razon ^ i;
end
end

