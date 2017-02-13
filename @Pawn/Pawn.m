classdef Pawn < ChessPiece
    %PAWN Summary of this class goes here
    %   Detailed explanation goes here
    
    methods
        function pawnPiece = Pawn(location, board, team)
            pawnPiece = pawnPiece@ChessPiece(location, board, team);
        end  
        
        function symbol = getSymbol(piece)
            symbol = 'P';
        end
    end
    
end

