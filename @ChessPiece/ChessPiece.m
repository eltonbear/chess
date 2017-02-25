classdef (Abstract) ChessPiece < handle
    %CHESSPIECE Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Position
        Team
        Board
    end
    
    methods
        function piece = ChessPiece(location, board, team)
            piece.Position = location;
            piece.Team = team;
            piece.Board = board;
            board.addPiece(piece)
        end    
        
        function die(piece)
            piece.Board.removePiece(piece)
        end
        
        function move(piece, position)
            moves = piece.getMoves();
            for i = 1:size(moves, 1)
                if position(1) == moves(i,1) && position(2) == moves(i, 2)
                    if moves(i,3) == 1
                        [~, pieceToBeAttack] = piece.Board.checkPosition(position);
                        pieceToBeAttack.die()
                    end
                    piece.Position = position;
                    break;
                end
            end
            error('not a valid move')
        end
    end
    
    methods(Abstract)
        symbol = getSymbol(piece)
        directionsAndMoves = getMoveArray(piece)
    end
    
    methods(Static)
        diaDirections = searchAllDiagonal(currPosition)
        VerHorDir = searchAllVerHor(currPosition)
    end

end

