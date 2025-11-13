% Original number
% Fou digits number with at least 2 
% different 
clear;
% original_number = 7648; 
tic
% disp(['Original number: ', num2str(original_number)])
max_con = 0;
low = 1000;
high = 9999; 
outsiders = zeros(high-low, 1); 
iter = 0;
fprintf('Executing...')
for k = low:high
    if length(unique(num2str(k))) >= 2
        % disp(['Number: ', num2str(k)])
        cont = 1;
        iter = iter + 1;
        % First calculation (difference is returned)
        difference = kap(k); 
        for i = 1:10
            if difference ~= 6174
                % Second calculation (difference is passed back in,
                %  new difference is returned)
                cont = cont + 1;
                if difference == 0
                    cont = cont - 1;
                end
                difference = kap(difference); 
            end
        end    
        if difference == 0
            outsiders(k) = k;
        end
    end
    if cont > max_con
        max_con = cont; 
    end
end
fprintf('\n')
outsiders = outsiders(outsiders ~= 0);
for i = 1:length(outsiders)
    digits_sum = sum(str2double(cellstr(num2str(outsiders(i))')));
    fprintf('Outsider: %s, Digits Sum: %d\n', num2str(outsiders(i)), digits_sum);
end
fprintf('\n \n')
fprintf('\n \n')

fprintf('========= SUMMARY =========\n')
disp(['Valid Numbers: ', num2str(iter-length(outsiders)), ' out of ', ...
    num2str(iter)])
disp(['Number of Outsiders: ', num2str(length(outsiders))])
disp(['Maximum of Iterations: ', num2str(max_con)])
toc

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
    % disp(['Reordered number (largest): ', num2str(largest_number)])
    % disp(['Reordered number (smallest): ', num2str(smallest_number)])

    % 4. Calculate the difference
    difference = largest_number - smallest_number;
    % disp(['Difference: ', num2str(difference)])
end