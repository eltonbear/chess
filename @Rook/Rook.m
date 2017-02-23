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
            directions = ChessPiece.searchAllVerHor(piece.Position);
        end
    end
end

