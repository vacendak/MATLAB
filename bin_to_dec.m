function [dec] = bin_to_dec(bin)

    bins = num2str(bin);
    vbin = zeros(1, length(bins));
    dec = 0;

    for i = 1:length(bins)
        vbin(i) = str2double(bins(i));
    end

    for i = 1:length(bins)
        dec = dec + vbin(i) * 2^(length(bins) - i);
    end
end