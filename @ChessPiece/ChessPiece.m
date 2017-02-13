classdef (Abstract) ChessPiece < handle
    %CHESSPIECE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        position
        team
    end
    
    methods
        function piece = ChessPiece(location, board, team)
            piece.position = location;
            piece.team = team;
            board.addPiece(piece)
        end        
    end
    
    methods(Abstract)
        symbol = getSymbol(piece)
    end
    
end

