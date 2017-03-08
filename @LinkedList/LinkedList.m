classdef LinkedList < handle
    properties (GetAccess = public, SetAccess = private)
        Size = 0
        CellArray = {}
    end
    
    properties (GetAccess = private, SetAccess = private)
        firstNode
        lastNode
    end

end