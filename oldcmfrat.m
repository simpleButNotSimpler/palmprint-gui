function mat = oldcmfrat(row, col, angle, M, S)
    row = row + 4;
    col = col + 4;
    mat = zeros(row, col);
    
    m = -tand(angle);
    a = round(col / 2);
    b = round(row / 2);
    
    if (angle >= 0 && angle <= 45) || (angle > 135 && angle <= 180)
        for x=col - 2:-1:3
            y = round(m*(x - a) + b);
            mat([y-1, y, y+1], x) = M;
            mat([y-3, y-2, y+2, y+3], x) = S;
        end
        
    elseif angle > 45 && angle <= 135
        for y=row - 2:-1:3
            x = round((y - b)/m + a);
            mat(y, [x-1, x, x+1]) = M;
            mat(y, [x-3, x-2, x+2, x+3]) = S;
        end
    end
end