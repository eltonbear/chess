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
    end
    
end

