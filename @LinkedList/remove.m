function NodeData = remove(list,index)
    if index < 1 || index > list.Size + 1
        error('Index invalid')
    end
    
    if index > list.Size/2
        targetNode = list.lastNode;
        if index == list.Size
            list.lastNode = list.lastNode.Prev;
        end
        for i = list.Size:-1:index
            if i == index
                NodeData = targetNode.Data;
                targetNode.delete()
                break;
            end
            targetNode = targetNode.Prev;
        end
    else
       targetNode = list.firstNode;
       if index == 1
            list.firstNode = list.firstNode.Next;
       end
       for i = 1:index
           if i == index
               NodeData = targetNode.Data;
               targetNode.delete()
               break;
           end
           targetNode = targetNode.Next;
       end
    end
    list.CellArray = [list.CellArray(1:index-1) list.CellArray(index+1: list.Size)];
    list.Size = list.Size - 1;
end