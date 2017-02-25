function directions = searchAllVerHor(currPosition)
    x = currPosition(1);
    y = currPosition(2);
    directions = {};
    if x < 8
        numUp = 8 - x;
        moves = {[(x + 1):8; y*ones(1, numUp)]'};
        directions = [directions moves];
    end
    if x > 1
        numDown = x - 1;
        moves = {[(x - 1):-1:1; y*ones(1, numDown)]'};
        directions = [directions moves];
    end
    if y < 8
        numUp = 8 - y;
        moves = {[x*ones(1, numUp); (y + 1):8 ]'};
        directions = [directions moves];
    end
    if y > 1
        numDown = y - 1;
        moves = {[x*ones(1, numDown); (y - 1):-1:1]'};
        directions = [directions moves];
    end

end
