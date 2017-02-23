classdef Rook < ChessPiece
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    methods
        function rookPiece = Rook(location, board, team)
            rookPiece = rookPiece@ChessPiece(location, board, team);
        end 
        
        function symbol = getSymbol(piece)
            symbol = 'R';            
        end 
        
        function directions = getMoveArray(piece)
            row = piece.Position(1);
            col = piece.Position(2);
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
    end
end

