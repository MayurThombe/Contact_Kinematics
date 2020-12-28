function z = form_closure_test(input)
%input :-
%input =
%
%    90     0   180   190
%     0     0    -2     4
%     0     0    -2     2
%output :-
%Optimal solution found.
%
%Form closure exists.
%z =
%
%    1.0000
%    9.3426
%    3.6713
%    5.7588
    
    
F = wrenchmatrix(input);
f = [1,1,1,1];
A = [[-1,0,0,0]; [0,-1,0,0]; [0,0,-1,0]; [0,0,0,-1]];
b = [-1,-1,-1,-1];
Aeq = F;
beq = [0,0,0];
z = linprog(f,A,b,Aeq,beq);
if isempty(z)
    fprintf('Form closure does ot exist.');
end
if ~isempty(z)
    fprintf('Form closure exists.');
end
end