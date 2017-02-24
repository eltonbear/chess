function moves = getMoves(piece)
   position = piece.Position;
   board = piece.Board;
   possibleMove = position + piece.Direction;
   possibleAttacks = [position + piece.Attack1, position + piece.Attack2];
   moves = [];
   
   [ifOccupied1, ~] = board.checkPosition(possibleMove);
   [ifOccupied2, pieceToAttack1] = board.checkPosition(possibleMove);
   [ifOccupied3, pieceToAttack2] = board.checkPosition(possibleMove);
   if ~ifOccupied1
       moves(end + 1, :) = [possibleMove false];
   end
   if ifOccupied2 && pieceToAttack1.Team ~= piece.Team
       moves(end + 1, :) = [possibleAttacks(1) true];
   end
   if ifOccupied3 && pieceToAttack2.Team ~= piece.Team
       moves(end + 1, :) = [possibleAttacks(2) true];
   end
       
end
            