classdef (Abstract) ChessPiece < handle
    %CHESSPIECE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Position
        Team
    end
    
    methods
        function piece = ChessPiece(location, board, team)
            piece.Position = location;
            piece.Team = team;
            board.addPiece(piece)
        end        
    end
    
    methods(Abstract)
        symbol = getSymbol(piece)
    end
    
end

