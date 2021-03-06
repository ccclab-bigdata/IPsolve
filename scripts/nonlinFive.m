function [ z,  H ] = nonlinFive(x)

   %PPR-T1-2 Beltrami[6], Indusi[35] HS40 Modified 
    
        F(1) =  -x(1)*x(2)*x(3)*x(4); 
        F(2) = x(1)^3 + x(2)^2 - 1; 
        F(3) = x(1)^2*x(4) - x(3); 
        F(4) = x(4)^2 - x(2); 
        J(1,1) = -x(2)*x(3)*x(4); 
        J(1,2) = -x(1)*x(3)*x(4); 
        J(1,3) = -x(1)*x(2)*x(4); 
        J(1,4) = -x(1)*x(2)*x(3); 
        J(2,1) = 3*x(1)^2; 
        J(2,2) = 2*x(2); 
        J(2,3) = 0; 
        J(2,4) = 0; 
        J(3,1) = 2*x(1)*x(4); 
        J(3,2) = 0; 
        J(3,3) = -1; 
        J(3,4) = x(1)^2; 
        J(4,1) = 0; 
        J(4,2) = -1; 
        J(4,3) = 0; 
        J(4,4) = 2*x(4); 
      

z = F';
H = J;

end

% for i=1:4
%     for j=1:4
%         for k=1:4
%             H(i,j,k) =  0.0;
%         end
%     end
% end
% H(1,1,2) =  -x(3)*x(4);
% H(1,2,1) =  -x(3)*x(4);
% H(1,1,3) =  -x(2)*x(4);
% H(1,3,1) =  -x(2)*x(4);
% H(1,1,4) =  -x(3)*x(2);
% H(1,4,1) =  -x(3)*x(2);
% H(2,1,1) =  6*x(1);
% H(2,2,2) =  2.0;
% H(3,1,1) =  2*x(4);
% H(3,1,4) =  2*x(1);
% H(3,4,1) =  2*x(1);
% H(4,4,4) =  2.0;