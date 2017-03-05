classdef Bishop < ChessPiece
    %UNTITLED5 Summary of this class goes here
    %   Detailed explanation goes here
    
    methods
        function bishopPiece = Bishop(location, board, team)
            bishopPiece = bishopPiece@ChessPiece(location, board, team);
        end 
               
        function directions = getMoveArray(piece)
            directions = ChessPiece.searchAllDiagonal(piece.Position);
        end
    end
    
    methods (Static)
        function symbol = getSymbol()
            symbol = 'B';
        end
    end
    
end

