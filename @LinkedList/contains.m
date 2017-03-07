function out = contains(list, nodeData)
    index = list.indexOf(nodeData);
    if index == -1
        out = false;
    else
        out = true;
    end
end