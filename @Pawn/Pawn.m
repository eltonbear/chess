classdef Pawn < ChessPiece
    %PAWN Summary of this class goes here
    %   Detailed explanation goes here
    properties
        Direction
        Attack1
        Attack2
    end
    
    methods
        function pawnPiece = Pawn(location, board, team)
            pawnPiece = pawnPiece@ChessPiece(location, board, team);
            pawnPiece.initializeProperties(team)
        end  
        
        function symbol = getSymbol(piece)
            symbol = 'P';
        end
        
        function directions = getMoveArray(piece)
            directions = [];
        end
    end
    
end

