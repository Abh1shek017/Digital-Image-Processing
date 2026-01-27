% -------------------------------------------------------------------------
% Date       : 26/01/2026
% Created by : Abhishek Kumar Jayswal
%
% Title      : Tambola (Housie) Ticket Generator
%
% Description:
% This program generates a valid Tambola ticket (3×9 matrix) such that:
%  - Each row contains exactly 5 numbers
%  - Each column contains 1 to 3 numbers
%  - Numbers fall within standard Tambola column ranges
%  - Numbers in each column are sorted in ascending order
% -------------------------------------------------------------------------

clc;
clear;
close all;

%% -------------------- STEP 1: STRUCTURE MATRIX --------------------
% M is a 3x9 binary matrix
% 1 → number exists at that position
% 0 → empty cell

M = zeros(3,9);

%% -------------------- ENSURE EACH COLUMN HAS AT LEAST ONE ENTRY --------------------
for col = 1:9
    row = randi(3);          % Randomly choose a row (1–3)
    M(row, col) = 1;
end

%% -------------------- ENSURE EACH ROW HAS EXACTLY 5 ENTRIES --------------------
for row = 1:3
    while sum(M(row,:)) < 5
        col = randi(9);      % Random column
        if M(row,col) == 0
            % Ensure column does not exceed 3 numbers
            if sum(M(:,col)) < 3
                M(row,col) = 1;
            end
        end
    end
end

disp('Tambola Structure Matrix (M):');
disp(M);

%% -------------------- STEP 2: NUMBER ASSIGNMENT --------------------
% Initialize final ticket matrix
Ticket = zeros(3,9);

for col = 1:9

    %% Column-wise number ranges (Tambola rules)
    if col == 1
        start = 1;    endv = 9;
    elseif col == 9
        start = 80;   endv = 90;
    else
        start = (col-1) * 10;
        endv  = start + 9;
    end

    %% Count how many numbers are needed in this column
    count = sum(M(:,col));

    %% Generate unique random numbers from the column range
    numbers = start:endv;
    numbers = numbers(randperm(length(numbers)));
    numbers = numbers(1:count);

    %% Manual ascending sort (Bubble Sort)
    for i = 1:count
        for j = 1:count-i
            if numbers(j) > numbers(j+1)
                temp = numbers(j);
                numbers(j) = numbers(j+1);
                numbers(j+1) = temp;
            end
        end
    end

    %% Assign numbers top to bottom according to structure matrix
    idx = 1;
    for row = 1:3
        if M(row,col) == 1
            Ticket(row,col) = numbers(idx);
            idx = idx + 1;
        end
    end
end

%% -------------------- FINAL OUTPUT --------------------
disp('Final Tambola Ticket:');
disp(Ticket);

% -------------------------------------------------------------------------
% End of Program
% -------------------------------------------------------------------------
