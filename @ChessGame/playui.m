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
        board = game.Board;
        
        team1HasKing = false;
        team2HasKing = false;
        noPiece = true;

        % initialize ui
        if isempty(game.Figure)
            game.Figure = figure('Name','Chess game');
        end
        fWidth = 560;
        fHeight = 300;
        fpos = get(game.Figure,'Position');
        set(game.Figure,'Position',[fpos(1:2), fWidth, fHeight]);


        % Fill in the code to assign to the following variables:
        boardPanel = uipanel(game.Figure, 'Position',[0 0 .5 1]);
        boardAxes = axes('Parent',boardPanel,'Position',[0.1 0.1 0.8 0.8]);
        buttonPanel = uipanel(game.Figure, 'Position',[.5 0 .5 1]);

        pieceTextW = 70;
        pieceTextH = 20;
        pieceText = uicontrol('Parent', buttonPanel,'Style','text',...
                              'Position',[fWidth/4-pieceTextW/2 260 pieceTextW pieceTextH],...
                              'String','Select a piece');               
        pieceMenuW = 80;
        pieceMenu = uicontrol('Parent', buttonPanel,'Style','popup',...
                              'Position',[fWidth/4-pieceMenuW/2 245 pieceMenuW pieceTextH],...
                              'String',{'King','Queen','Bishop','Rook','Knight','Pawn'}); 
        positionTextW = 90;
        positionText = uicontrol('Parent', buttonPanel,'Style','text',...
                              'Position',[fWidth/4-positionTextW/2 210 positionTextW pieceTextH],...
                              'String','Enter a position');
        positionEditW = 70;
        positionEdit = uicontrol('Parent', buttonPanel, 'Style', 'edit',...
                                 'Position', [fWidth/4-positionEditW/2 195 positionEditW pieceTextH]);
        buttonPanelW = 110;
        buttonPanelH = 70;
        teamGroup = uibuttongroup('Parent', buttonPanel, 'Visible','on',...
                                  'Title', 'Select a team', 'Units', 'pixels',...
                                  'Position', [fWidth/4-buttonPanelW/2 fHeight/2-buttonPanelH/2 buttonPanelW buttonPanelH]);
        radioButtW = 60;
        radioButtH = 20;
        teamButtons{1} = uicontrol('Parent', teamGroup,'Style', 'radiobutton',...
                                   'String','Team 1',...
                                   'Position',[buttonPanelW/2-radioButtW/2 buttonPanelH/3*2-radioButtH/2 radioButtW radioButtH]);
        teamButtons{2} = uicontrol('Parent', teamGroup,'Style', 'radiobutton',...
                                   'String','Team 2',...
                                   'Position',[buttonPanelW/2-radioButtW/2 buttonPanelH/3*1-radioButtH/2 radioButtW radioButtH]);
        buttonW = 70;
        buttonH = 25;
        submitButton = uicontrol('Parent', buttonPanel, 'Style', 'pushbutton',...
                                 'String', 'Submit',...
                                 'Position', [fWidth/4-buttonW/2 70 buttonW buttonH],...
                                 'Callback', @submit_callback);

        playButton = uicontrol('Parent', buttonPanel, 'Style', 'pushbutton',...
                                'String', 'Play',...
                                'Position', [fWidth/4-buttonW/2 30 buttonW buttonH],...
                                'Callback', @play_callback);

        board.display(boardAxes)
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
        pieceString = pcs{get(pieceMenu,'Value')}; %string of piece name
        
        if strcmp(pieceString, 'King')
            King(position, board, team, game);
            if team == 1
                team1HasKing = true;
            else
                team2HasKing = true;
            end
        else
            pieceConstructor = str2func(pieceString);
            pieceConstructor(position, board, team);
        end
                
        board.display(boardAxes)
        noPiece = false;
    end

    function play_callback(hObject,eventdata)
        if noPiece
            game.initializeBoard();
        elseif ~team1HasKing
            error('Team 1 does not have a king')
        elseif ~team2HasKing
            error('Team 2 does not have a king')
        end
        np = uipanel(game.Figure);
        newAxes = axes('Parent',np,'Position',[0.1 0.1 0.8 0.8]);
        board.display(newAxes)
        game.play();  
    end
end
