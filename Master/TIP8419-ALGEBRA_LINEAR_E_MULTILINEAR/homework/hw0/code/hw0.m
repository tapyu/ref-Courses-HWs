%% [TIP8419 - Algebra Linear e Multilinear] - Homework 0 
% by Lucas Abdalah
%------------------------------------------------------------------------------
% script: hw0.m
% 2022/04/18 - v1

%% Clear Ambient
clc; close all; 


%% Problem 1 - item (a) -------------------------------------------------------
% hw0_problem1_a % generate data
data1 = load('hw0_data1.mat');

% Plot results
h1 = figure();
semilogy(data1.N, mean(data1.time_a_method1, 1),...
    'Color', 'blue',...        
    'LineStyle', '--',...
    'LineWidth', 1.0,...
    'Marker', 'o',...
    'MarkerFaceColor', 'blue',...
    'MarkerSize', 5);

hold on
semilogy(data1.N,mean(data1.time_a_method2, 1),...
    'Color', 'red',...        
    'LineStyle', '-',...
    'LineWidth', 1.0,...
    'Marker', 'square',...
    'MarkerFaceColor', 'red',...
    'MarkerSize', 5);

hold off
xticks(data1.N);
xlabel('Matrix Dimension, N')
ylabel('Time (s)')
legend(["Method 1", "Method 2"], 'Location', 'Best') % legend(leg, 'Location', 'Northeastoutside')
legend boxoff
grid on
axis tight

% savefig_tight(h1, "hw0-problem1-a", "both")


%% Problem 1 - item (b) ------------------------------------------------------------------
% hw0_problem1_b % generate data
data2 = load('hw0_data2.mat');

% Gen Figure
h2 = figure();
semilogy(data2.K, mean(data2.time_b_method1, 1), ...
    'Color', 'blue',...        
    'LineStyle', '--',...
    'LineWidth', 1.0,...
    'Marker', 'o',...
    'MarkerFaceColor', 'blue',...
    'MarkerSize', 5);
hold on 
semilogy(data2.K, mean(data2.time_b_method2, 1), ...
    'Color', 'red',...        
    'LineStyle', '-',...
    'LineWidth', 1.0,...
    'Marker', 's',...
    'MarkerFaceColor', 'red',...
    'MarkerSize', 5);
hold off
xticks(data2.K);
xlabel('Matrix Dimension, K')
ylabel('Time (s)')
legend(["Method 1", "Method 2"], 'Location', 'Best') % legend(leg, 'Location', 'Northeastoutside')
legend boxoff
grid on
axis tight

% savefig_tight(h2, "hw0-problem1-b", "both")