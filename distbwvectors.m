function dist = distbwvectors(A,B)
    distance = 0;
    if size(A,1) ~= size(B,1) || size(A,2) ~= 1 || size(B,2) ~= 1
        distance = -1;
        disp("You got two unequal vectors!")
        A
        B
    else
        for i = 1:size(A,1)
            distance = distance + ((A(i,1) - B(i,1))^2);
        end
        distance = distance^(0.5);
    end
    dist = distance;
end