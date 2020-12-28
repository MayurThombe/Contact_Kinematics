function F = wrenchmatrix(input)% A function to create wrench matrix from given position and angles of normal vectors
for i=1:1:4
    Pvector = [input(2,i) input(3,i) 0];
    Nvector = [cos((pi/180)*input(1,i)) sin((pi/180)*input(1,i)) 0];    
    c = cross(Pvector,Nvector);
    F(:,i) = [c(3);Nvector(1);Nvector(2)]; 
end
    