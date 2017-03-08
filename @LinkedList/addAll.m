function addAll(list,otherList)
    for pieceCell = otherList.CellArray
        list.add(pieceCell{1});
    end
end