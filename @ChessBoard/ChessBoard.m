classdef ChessBoard < handle
    %CHESSBOARD Represents the state of a game of chess
    %   Describe here in your own words how this class works.

    properties (Access = private)
        ActiveList 
    end
    
    methods
        function board = ChessBoard()
            board.ActiveList = LinkedList();
        end
        
        function addPiece(board, piece)
            % Your code here
            result = checkPosition(board, piece.Position);
            if result(1) == false
                board.ActiveList.add(piece);
            else
                error('Location already occupied')
            end
        end
        
        function removePiece(board, piece)
            % Your code here
            index = board.ActiveList.indexOf(piece);
            if index == -1
                error('Piece not on the board')
            else
                board.ActiveList.remove(index);
            end
        end
        
        function [occupied, piece] = checkPosition(board, position)
            % Your code here
            cellArray = board.ActiveList.CellArray;
            for pieceCell = cellArray
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
