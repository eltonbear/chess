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
        
        function die(piece)
            piece.die@ChessPiece();
            piece.Game.checkmate(piece);
        end
        
        function directions = getMoveArray(piece)
            y = piece.Position(2);
            x = piece.Position(1);
            directions = {};
            for row = y-1:y+1
                if row > 0 && row < 9
                    for col = x-1:x+1
                        if col > 0 && col < 9 && ~(col == x && row == y)
                            directions = [directions [col row]];
                        end
                    end
                end
            end
        end    
    end
    
    methods (Static)
        function symbol = getSymbol()
            symbol = 'K';
        end
    end
end