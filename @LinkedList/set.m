function set(list,NodeData,index)
    if index < 1 || index > list.Size
        error('Index invalid')
    end
    
    if index > list.Size/2
        targetNode = list.lastNode;
        for i = list.Size:-1:index
            if i == index
               targetNode.Data = NodeData;
               break;
            end
            targetNode = targetNode.Prev;
        end
    else
       targetNode = list.firstNode;
       for i = 1:index
           if i == index
               targetNode.Data = NodeData;
               break;
           end
           targetNode = targetNode.Next;
       end
    end
    list.CellArray{index} = NodeData;
end