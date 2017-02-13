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
    end
    
end

