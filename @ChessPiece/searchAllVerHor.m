function directions = searchAllVerHor(currPosition)
    row = currPosition(1);
    col = currPosition(2);
    directions = {};
    if row < 8
        numUp = 8 - row;
        moves = {[(row + 1):8; col*ones(1, numUp)]'};
        directions = [directions moves];
    end
    if row > 1
        numDown = row - 1;
        moves = {[(row - 1):-1:1; col*ones(1, numDown)]'};
        directions = [directions moves];
    end
    if col < 8
        numUp = 8 - col;
        moves = {[row*ones(1, numUp); (col + 1):8 ]'};
        directions = [directions moves];
    end
    if col > 1
        numDown = col - 1;
        moves = {[row*ones(1, numDown); (col - 1):-1:1]'};
        directions = [directions moves];
    end

end
