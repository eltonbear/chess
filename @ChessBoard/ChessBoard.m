classdef ChessBoard < handle
    %CHESSBOARD Represents the state of a game of chess
    %   Describe here in your own words how this class works.
    
    properties
        ActiveList
    end
    
    methods
        function board = ChessBoard()
            board.ActiveList = {};
        end
        
        function addPiece(board, piece)
            % Your code here
            result = checkPosition(board, piece.Position);
            if result(1) == false
                board.ActiveList{end + 1} = piece;
            else
                error('Location already occupied')
            end
        end
        
        function removePiece(board, piece)
            % Your code here
            for i = 1:length( board.ActiveList)
                if board.ActiveList{i} == piece
                    board.ActiveList(i) = [];
                    return
                end             
            end
            error('Piece not on the board')
        end
        
        function [occupied, piece] = checkPosition(board, position)
            % Your code here
            for pieceCell = board.ActiveList
                if isequal(position, pieceCell{1}.Position)
                   occupied = true; 
                   piece = pieceCell{1};
                   return              
                end  
            end
            occupied = false;
            piece = [];
        end
        
    end
end
