function adjfig(hFig)
% adjfig.m
%
% usage: adjfig([figure_handle])
%
% adjust the thickness of plots and annotation objects (arrow, text...)
% as well as the font size of axis labels (x, y, z), title, legend (if any)
% for the figure with handle 'figure_handle' (current figure is assumed
% if omitted)
%
% See also FIGURE, XLABEL, YLABEL, ZLABEL, TITLE, SUBPLOT
%
% ver 1.1, by Peter Hung, Sean McLoone 2008

% input arguments housekeeping and error ccontrol
if (1>nargin)
    hFig = get(0,'CurrentFigure'); % get the handle of the current figure
                                   % if 'hFig' is not specified
    if (isempty(hFig))
        disp('Err! No figure(s) exist. Type ''help adjfig'' for help.');
        return;
    end
end
if (0==ishandle(hFig)) % check if a valid figure handle is supplied
    disp('Err! Invalid handle specified. Type ''help adjfig'' for help.');
    return;
end
if (0==strcmp(get(hFig,'Type'),'figure')) % check if it is a figure handle
    disp('Err! Handle specified is not a figure handle. Type ''help adjfig'' for help.');
    return;
end

% set the numerical values of parameters that affect the figure appearance
widthCurve = 2;       % thickness of curves (if any)
fsizeXLabel = 14;     % font size of label in x-axis
fsizeYLabel = 14;     % font size of label in y-axis
fsizeZLabel = 14;     % font size of label in z-axis
fsizeTitle = 14;      % font size of figure title
fsizeLegendText = 12; % font size of legend text
widthAnnot = 1;       % thickness of annotations (line, arrow, text...)
fsizeAnnot = 14;      % font size of text in figure

% modify the appearance of the specified figure (excluding annotations)
figure(hFig); % make the figure concerned current
hAxes = findobj(hFig,'Type','axes'); % get the handles of all children
for i=1:size(hAxes,1) % check for invalid axes handle
    if (0==strcmp(get(hAxes(i),'Tag'),'')) % check axes tag
        hAxes(i) = -1;
    end
end
hAxes(-1==hAxes) = []; % remove invalid axes handle
for i=1:size(hAxes,1)
    hMainAxes = hAxes(i); % set handle
    hCurves = get(hMainAxes,'Children'); % get the handles of all curves
    if (~isempty(hCurves))
        set(hCurves,'LineWidth',widthCurve); % set the thickness of all curves
    end
    hXlabel = get(hMainAxes,'XLabel'); % get the handle of 'xlabel' (if any)
    if (~isempty(hXlabel))
        set(hXlabel,'FontSize',fsizeXLabel);
    end
    hYlabel = get(hMainAxes,'YLabel'); % get the handle of 'ylabel' (if any)
    if (~isempty(hYlabel))
        set(hYlabel,'FontSize',fsizeYLabel);
    end
    hZlabel = get(hMainAxes,'ZLabel'); % get the handle of 'zlabel' (if any)
    if (~isempty(hZlabel))
        set(hZlabel,'FontSize',fsizeZLabel);
    end
    hTitle = get(hMainAxes,'Title'); % get the handle of title (if any)
    if (~isempty(hTitle))
        set(hTitle,'FontSize',fsizeTitle);
    end
    hLegend = findobj(hFig,'Tag','legend'); % find the legend handle (if any)
    if (~isempty(hLegend))
        set(hLegend,'FontSize',fsizeLegendText);
    end
end

% modify the appearance of annotations in the figure (if any)
figure(hFig); % make the figure concerned current
set(0,'ShowHiddenHandles','on'); % ROOT: make hidden handles visible
hOverlay = findobj(gcf,'Tag','scribeOverlay'); % find annotation axes
hAnnot = get(hOverlay,'Children'); % get annotation objects
set(hAnnot,'LineWidth',widthAnnot); % set object thickness
hAnnotFS = hAnnot;
for i=1:length(hAnnot)
    try
        get(hAnnot(i),'FontSize'); % attempt to get font size of text
    catch
        hAnnotFS(i) = -1; % mark handle with no 'FontSize' object property
    end
end
hAnnotFS(-1==hAnnotFS) = []; % delete handle with no 'FontSize' property
set(hAnnotFS,'FontSize',fsizeAnnot); % set font size of object text
set(0,'ShowHiddenHandles','off'); % ROOT: make hidden handles invisible
