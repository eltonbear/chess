classdef Queen < ChessPiece
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here

    methods
        function queenPiece = Queen(location, board, team)
            queenPiece = queenPiece@ChessPiece(location, board, team);
        end 
        
        function directions = getMoveArray(piece)
            straights = ChessPiece.searchAllVerHor(piece.Position);
            diagonals = ChessPiece.searchAllDiagonal(piece.Position);
            directions = [straights diagonals];            
        end
        
    end
    
    methods (Static)
        function symbol = getSymbol()
            symbol = 'Q';
        end
    end
    
end

