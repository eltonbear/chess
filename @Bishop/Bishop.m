classdef Bishop < ChessPiece
    %UNTITLED5 Summary of this class goes here
    %   Detailed explanation goes here
    
    methods
        function bishopPiece = Bishop(location, board, team)
            bishopPiece = bishopPiece@ChessPiece(location, board, team);
        end 
        
        function symbol = getSymbol(piece)
            symbol = 'B';
        end
        
        function directions = getMoveArray(piece)
            row = piece.Position(1);
            col = piece.Position(2);
            % Up right
            directions = {};
            position = [];
            r = row + 1;
            c = col + 1;
            while r <= 8 && c <= 8
               position = [position ;[r c]];
               r = r + 1;
               c = c + 1;
            end
            if isempty(position) == 0
                directions = [directions {position}];
            end
            % Up left
            position = [];
            r = row + 1;
            c = col - 1;
            while r <= 8 && c >= 1
               position = [position ;[r c]];
               r = r + 1;
               c = c - 1;
            end
            if isempty(position) == 0
                directions = [directions {position}];
            end
            
            % Down right
            position = [];
            r = row - 1;
            c = col + 1;
            while r >= 1 && c <= 8
               position = [position ;[r c]];
               r = r - 1;
               c = c + 1;
            end
            if isempty(position) == 0
                directions = [directions {position}];
            end
            
            % Down LEFT
            position = [];
            r = row - 1;
            c = col - 1;
            while r >= 1 && c >= 1
               position = [position ;[r c]];
               r = r - 1;
               c = c - 1;
            end
            if isempty(position) == 0
                directions = [directions {position}];
            end
            
        end
    end
    
end

