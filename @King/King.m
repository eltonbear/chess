classdef King < ChessPiece
    properties
        Game
    end

    methods
        function kingPiece = King(location, board, team, chessGame)
            kingPiece = kingPiece@ChessPiece(location, board, team);
            kingPiece.Game = chessGame;
            kingPiece.Game.addKing(kingPiece);
        end  
        
        function symbol = getSymbol(piece)
            symbol = 'K';
        end
        
        function die(piece)
            piece.die@ChessPiece();
            piece.Game.checkmate(piece);
        end
        
        function directions = getMoveArray(piece)
        end
        
    end
end