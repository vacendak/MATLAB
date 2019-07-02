function [res] = En_Tot(signal)
res = 0;
for i = 1:length(signal)
    res = res + signal(i).^2;
end
end

