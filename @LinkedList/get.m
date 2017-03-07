function NodeData = get(list,index)
    if index < 1 || index > list.Size + 1
        error('Index invaid')
    end
    NodeData = list.CellArray{index};
end

