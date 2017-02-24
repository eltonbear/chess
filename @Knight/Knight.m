classdef Knight < ChessPiece
    %UNTITLED3 Summary of this class goes here
    %   Detailed explanation goes here

    methods
        function knightPiece = Knight(location, board, team)
            knightPiece = knightPiece@ChessPiece(location, board, team);
        end 
        
        function symbol = getSymbol(piece)
            symbol = 'N';
        end
        
        function directions = getMoveArray(piece)
            y = piece.Position(2);
            x = piece.Position(1);
            directions = {};
            for row = [y-1 y+1]
                if row > 0 && row < 9
                    for col = [x-2 x+2]
                        if col > 0 && col < 9
                            directions = [directions [col row]];
                        end
                    end
                end
            end
            
            for row = [y-2 y+2]
                if row > 0 && row < 9
                    for col = [x-1 x+1]
                        if col > 0 && col < 9
                            directions = [directions [col row]];
                        end
                    end
                end
            end
        end
        
    end
    
end

