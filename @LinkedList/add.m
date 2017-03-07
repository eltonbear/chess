function add(list,NodeData,index)
             if nargin == 3
                if index < 1 || index > list.Size + 1
                    error('Index invaid')
                end
                
                newNode = dlnode(NodeData);
                
                if index == list.Size + 1 % Append
                    if list.Size == 0 % add node to empty list
                        list.firstNode = newNode;
                        list.lastNode = newNode;
                    end
                    newNode.insertAfter(list.lastNode)
                    list.CellArray = [list.CellArray {NodeData}];
                    list.lastNode = newNode; 
                else
                    list.CellArray = [list.CellArray(1:index-1) {NodeData} list.CellArray(index:list.Size)];
                    if index > list.Size/2;
                        targetNode = list.lastNode;
                        for i = list.Size:-1:index
                            if i == index
                                newNode.insertBefore(targetNode)
                            end
                            targetNode = targetNode.Prev;
                        end

                    else
                        targetNode = list.firstNode;
                        for i = 1:index
                            if i == index
                                newNode.insertBefore(targetNode)
                            end
                            targetNode = targetNode.Next;
                        end
                        if index == 1
                            list.firstNode = newNode;                            
                        end
                    end
                end
             elseif nargin == 2
                newNode = dlnode(NodeData); 
                if list.Size == 0  
                    list.firstNode = newNode;
                    list.lastNode = newNode;
                    list.CellArray = {NodeData};
                else
                    newNode.insertAfter(list.lastNode)
                    list.CellArray = [list.CellArray {NodeData}];
                    list.lastNode = newNode;  
                end
             end
             list.Size = list.Size + 1;
        end