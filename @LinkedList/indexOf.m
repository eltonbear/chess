function index = indexOf(list, nodeData)
    index = -1;
    for i = 1:list.Size
        if list.CellArray{i} == nodeData
            index = i;
            break;
        end
    end
end