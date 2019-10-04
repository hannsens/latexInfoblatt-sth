\ProvidesClass{infoblatt-sth}[Vorlage für Infoblätter von Hannes Stein]
% Eigene Dokumentenklasse mit Hilfe dieser Seite erstellt:
% https://texwelt.de/fragen/1479/wie-erstelle-ich-eine-eigene-dokumentenklasse

\LoadClass[10pt]{scrartcl} 

\usepackage[a4paper,left=1.5cm,right=1.5cm,top=2cm,bottom=2cm,bindingoffset=5mm]{geometry}

%% allgemeine Imports, die nicht mehr erforderlich sind, da ich mit lulatex kompiliere
% \RequirePackage[utf8x]{inputenc} % Zeichenkodierung
% \RequirePackage[ngerman]{babel}  % u.a. Silbentrennung
% \RequirePackage[T1]{fontenc}

%\RequirePackage{floatflt} 
%\RequirePackage{times}

\RequirePackage{amsmath} %Bei Bedarf: Formeln

% Zum Einfügen von Bildern
\RequirePackage{graphicx}   % Bilder
\graphicspath{{./image/}{./plantuml/}{./}}

% Einfügen der Bilder über: 
%\begin{figure}[htbp] 
%	\centering
%	\includegraphics[width=3cm]{JavaSpringInitializr.png}
%	\caption{Logo}
%	\label{fig:Bild1}
%\end{figure}

% Alternative zum Einfügen von Bildern
\RequirePackage{wrapfig}
%\begin{wrapfigure}{l}{0.25\textwidth}
%	\centering
%	\includegraphics[width=0.25\textwidth]{contour}
%\end{wrapfigure}


\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{calc} % Zur Berechnung von \ht und \structbox scheinbar nötig


\RequirePackage{lastpage} %Letzte Seitenzahl anzeigen
\RequirePackage{hyperref}
\RequirePackage{cclicenses}

%\RequirePackage{blindtext}  %% Zum Debugging: Blindtext einfügen

%%% zur Darstellung von Quellcode
\RequirePackage{listings}
\RequirePackage{color}
\RequirePackage{xcolor}

%%% Für individuelle Kopfzeilen
% https://esc-now.de/_/latex-individuelle-kopf--und-fusszeilen/?lang=en
%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[headsepline=0.5pt,footsepline=0.5pt,plainheadsepline=true, plainfootsepline=true,headwidth=(\the\textwidth), footwidth=(\the\textwidth)]{scrlayer-scrpage}

% Alle Inhalte löschen.
\clearpairofpagestyles

%\renewcommand{\familydefault}{\sfdefault}

% Schriftformatierung zurücksetzen.
\setkomafont{pageheadfoot}{}
\setkomafont{title}{\bfseries}

% Linien einfärben.
\addtokomafont{headsepline}{\color{gray}}
\addtokomafont{footsepline}{\color{gray}}

%%%%%%%%%%%%%%%%%%%%%%%%%
%%% zur Darstellung von Quellcode
\definecolor{dkgreen}{rgb}{0,0.6,0}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{lightgray}{rgb}{0.83, 0.83, 0.83}
\definecolor{mauve}{rgb}{0.58,0,0.82}

\lstset{
	frame=tb,	
	aboveskip=3mm,
	belowskip=3mm,
	columns=fixed,
	basicstyle={\small\ttfamily},
	numbers=left,
	numberstyle=\tiny\color{gray},
	firstnumber=last,
	keywordstyle=\color{blue},
	commentstyle=\color{dkgreen},
	stringstyle=\color{mauve},
	breaklines=true,
	breakatwhitespace=true,
	tabsize=3,
	includerangemarker=true,
	showtabs=false,
	showspaces=false
}

\lstdefinestyle{java}{
	language=Java,
	numbers=left, stepnumber=1, numberstyle=\tiny, numbersep=10pt}
\lstdefinestyle{bashquery}{
	language=bash,
	numbers=left,
	stepnumber=1,
	numberstyle=\tiny,
	numbersep=10pt}
\lstdefinestyle{response}{
	frame=trbl,
	aboveskip=0mm,
	belowskip=3mm,
	basicstyle={\scriptsize\ttfamily},
	frame=shadowbox, 
	rulecolor=\color{lightgray},
	rulesepcolor=\color{lightgray},
	numbers=none
}

\lstdefinestyle{nonumbers}{
	numbers=none
}

\lstdefinestyle{plantuml}{
	numbers=left, stepnumber=1, numberstyle=\tiny, numbersep=10pt,
	morekeywords=[1]{actor, usecase, rectangle, as},
	morekeywords=[2]{skinparam, ArrowColor, BorderColor, BackgroundColor},
	morekeywords=[3]{DefaultFontName},
	morekeywords=[4]{whitesmoke, DarkSlateBlue, LightYellow},
	morekeywords=[5]{note, top, on, link, end, left to right, direction, up, down},
	otherkeywords={ :,  .., .,  -, --, ->, -->, -|>, --|>, <-, <--, <|-, <|--, <., <.., <|., <|.., \\n, \{, \}} ,
	morecomment=[l]{'}
}

\lstdefinestyle{powershell}{
	alsodigit = {-},
	morekeywords=[1] = {Get-AzureSubscription,Get-Host,anything}
}

\RequirePackage{titling}

%\hypersetup{
%	pdftitle    = { hihihi },
%	pdfsubject  = {Um was geht es },
%	pdfauthor   = {Autor bzw. Autoren},
%	pdfkeywords = {Stichwort1, Stichwort2 ...} ,
%	baseurl = {http://www.csbme.de},
%	pdfdisplaydoctitle = true
%}

\ProcessOptions\relax
% #######################################################################################################
