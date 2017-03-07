function addAll(list,otherList)
    targetNode = otherList.firstNode;
    for i = 1:otherList.Size
        list.add(targetNode.Data)
        targetNode = targetNode.Next;
    end
    
end