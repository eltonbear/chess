classdef King < ChessPiece
    methods
        function kingPiece = King(location, board, team, chessGame)
            kingPiece = kingPiece@ChessPiece(location, board, team);
        end        
    end
end