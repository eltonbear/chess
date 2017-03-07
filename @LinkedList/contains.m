function out = contains(list,NodeData)
    out = ~isempty(find(cell2mat(list.CellArray) == NodeData, 1));
end