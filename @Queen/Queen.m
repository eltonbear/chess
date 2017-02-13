classdef Queen < ChessPiece
    %UNTITLED4 Summary of this class goes here
    %   Detailed explanation goes here

    methods
        function queenPiece = Queen(location, board, team)
            queenPiece = queenPiece@ChessPiece(location, board, team);
        end 
        
        function symbol = getSymbol(piece)
            symbol = 'Q';
        end
    end
    
end

