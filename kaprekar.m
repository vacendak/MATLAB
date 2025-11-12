% Original number
number = 2413; 

% First calculation (difference is returned)
difference = kap(number); 

% Second calculation (difference is passed back in, new difference is returned)
difference = kap(difference); 

function difference = kap(number)
    % 1. Get and sort the digits
    char_array = num2str(number);
    
    % Sort descending (largest number)
    sorted_digits_1 = sort(str2double(cellstr(char_array')), 'descend'); 

    % Sort ascending (smallest number)
    sorted_digits_2 = sort(str2double(cellstr(char_array')), 'ascend'); 

    % 2. CONSTRUCT THE STRING
    % Formats each digit ('%d') into a single string.
    string_1 = sprintf('%d', sorted_digits_1);

    string_2 = sprintf('%d', sorted_digits_2);

    % 3. Convert to number
    largest_number = str2double(string_1);

    smallest_number = str2double(string_2);

    disp(['Reordered number (largest): ', num2str(largest_number)])

    disp(['Reordered number (smallest): ', num2str(smallest_number)])

    % 4. Calculate the difference
    difference = largest_number - smallest_number;
    disp(['Difference: ', num2str(difference)])
end
