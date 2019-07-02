function [mBin] = binar (mIn, umbral)

[m,n] = size(mIn);
mBin = ones(m,n);

for i = 1:m
    for j = 1:n
        if (mIn(i,j) >= umbral)
            mBin(i,j) = 0;
        else
            mBin(i,j) = 1;
        end
    end
end
end

