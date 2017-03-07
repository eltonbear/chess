function NodeData = get(list,index)
    if index < 1 || index > list.Size
        error('Index invaid')
    end
    NodeData = list.CellArray{index};
end

