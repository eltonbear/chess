function out = subList(list,indexFrom,indexTo)
	if indexFrom < 1 || indexFrom > list.Size || indexTo < 1 || indexTo > list.Size
        error('Index invalid')
    end
    
    out = LinkedList();
	targetNode = list.firstNode;    
 	for index = 1:indexTo
        if index >= indexFrom
            out.add(targetNode.Data);
        end
        targetNode = targetNode.Next;
    end
end