function playui(game)
%PLAYUI Summary of this function goes here
%   Detailed explanation goes here

if isempty(game.Playing) || game.Playing == 0
    if game.Playing == 0
        disp('Game has ended. Resetting board.');
    end
    game.Directions = [];
    game.Board = ChessBoard();
    game.Playing = 1;

    bd = game.Board;

    % initialize ui
    if isempty(game.Figure)
        game.Figure = figure('Name','Chess game');
    end
    fpos = get(game.Figure,'Position');
    set(game.Figure,'Position',[fpos(1:2),560,300]);


    % Fill in the code to assign to the following variables:
    
    boardPanel = % the left panel
    boardAxes = % the axes for the board display
    buttonPanel = % the panel for the buttons

    pieceText = % the text above the piece menu
    pieceMenu = % the piece menu
    
    positionText = % the text above the position box
    positionEdit = % the position box
    
    teamGroup = % the radio button group for team selection
    teamButtons{1} = % team 1 radio button
    teamButtons{2} = % team 2 radio button

    submitButton = % the submit button

    playButton = % the play button
    
    % put in code here to display the board
    
else
    game.play();
end



    function submit_callback(hObject,eventdata)
        team = [];
        for i = 1:length(teamButtons)
            teamButton = teamButtons{i};
            if get(teamButton,'Value')==1
                team = i; %team is a double
                break;
            end
        end
        if isempty(team)
            error('No team selected!');
        end
        pcs = get(pieceMenu,'String');
        
        position = str2num(get(positionEdit,'String')); %1x2 double array
        piece = pcs{get(pieceMenu,'Value')}; %string of piece name
        
        % put in code here to create the appropriate piece
        
        % put in code here to update the display of the board
    end

end
