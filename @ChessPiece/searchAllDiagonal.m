function directions = searchAllDiagonal(currPosition)
    xx = currPosition(1);
    yy = currPosition(2);
    % Up right
    directions = {};
    position = [];
    x = xx + 1;
    y = yy + 1;
    while x <= 8 && y <= 8
       position = [position ;[x y]];
       x = x + 1;
       y = y + 1;
    end
    if isempty(position) == 0
        directions = [directions {position}];
    end
    % Up left
    position = [];
    x = xx + 1;
    y = yy - 1;
    while x <= 8 && y >= 1
       position = [position ;[x y]];
       x = x + 1;
       y = y - 1;
    end
    if isempty(position) == 0
        directions = [directions {position}];
    end

    % Down right
    position = [];
    x = xx - 1;
    y = yy + 1;
    while x >= 1 && y <= 8
       position = [position ;[x y]];
       x = x - 1;
       y = y + 1;
    end
    if isempty(position) == 0
        directions = [directions {position}];
    end

    % Down LEFT
    position = [];
    x = xx - 1;
    y = yy - 1;
    while x >= 1 && y >= 1
       position = [position ;[x y]];
       x = x - 1;
       y = y - 1;
    end
    if isempty(position) == 0
        directions = [directions {position}];
    end 
end    