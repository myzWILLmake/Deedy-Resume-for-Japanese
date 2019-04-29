% Intro Options
\ProvidesClass{deedy-resume-openfont}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{666666} 
\definecolor{primary}{HTML}{2b2b2b} 
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/aozoramincho/, BoldItalicFont=AozoraMincho-bold,BoldFont=AozoraMincho-bold,ItalicFont=AozoraMincho-bold]{AozoraMinchoRegular}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/aozoramincho/]{AozoraMincho-thin}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/aozoramincho/]{AozoraMincho-thin}\fontsize{8pt}{10pt}\selectfont 
Last Updated on \today
\end{textblock}}

% Name command
\usepackage{ruby}
\renewcommand\rubysep{.05ex}

\newcommand{\namesection}[5]{
\centering{
\fontsize{30pt}{30pt}
\ruby{\fontspec[Color=primary, Path = fonts/aozoramincho/]{AozoraMincho-bold]} \selectfont  #1}{\fontspec[Color=primary, Path = fonts/aozoramincho/]{AozoraMinchoMedium]} \selectfont #2}\ 
\ruby{\fontspec[Color=primary, Path = fonts/aozoramincho/]{AozoraMincho-bold]} \selectfont  #3}{\fontspec[Color=primary, Path = fonts/aozoramincho/]{AozoraMinchoMedium]} \selectfont #4}\ 
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/aozoramincho/]{AozoraMinchoRegular}\fontsize{11pt}{11pt}\selectfont #5}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{-15pt}
}

% Section seperators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Color=primary, Path = fonts/aozoramincho/]{AozoraMincho-bold]}\fontsize{16pt}{24pt}\selectfont \raggedright}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Color=primary, Path = fonts/aozoramincho/]{AozoraMincho-bold]}\fontsize{12pt}{12pt}\selectfont\bfseries}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Color=primary, Path = fonts/aozoramincho/]{AozoraMincho-bold]}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\fontspec[Path = fonts/aozoramincho/]{AozoraMinchoRegular}\fontsize{10pt}{10pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/aozoramincho/]{AozoraMinchoRegular}\fontsize{10pt}{10pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

