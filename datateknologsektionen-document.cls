\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{datateknologsektionen-document}[2019/01/07]
\LoadClass{article}

\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[swedish]{babel}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{xcolor}
\usepackage[a4paper,left=3cm, right=3cm, top=3cm, bottom=5cm, headheight=41pt]{geometry}
\usepackage[compact]{titlesec}
\usepackage{enumitem}
\usepackage{tabu}
\usepackage{longtable}
\usepackage{tabularray}

\usepackage[hidelinks]{hyperref}

\usepackage{parskip}
\usepackage{lastpage}
\usepackage{scrextend}

% Change font
\usepackage{caladea}
\usepackage[T1]{fontenc}

% Sets left aligned text instead of justified.
\usepackage[document]{ragged2e}

% Used for adding § to toc
\usepackage{tocloft}

% Limit table of content to a depth of 2, ex: shows §3.1 but not §3.1.1
\setcounter{tocdepth}{2}

\setlist{nosep}

% Byt titel på innehållsförteckningen
\addto\captionsswedish{
  \renewcommand*\contentsname{Innehållsförteckning}
}

% add the § symbol to sections, requires tocloft
\addtolength\cftsecnumwidth{0.7em} 
\addtolength\cftsubsecnumwidth{0.7em} 
\addtolength\cftsubsubsecnumwidth{0.7em} 
\addtolength\cftparanumwidth{0.7em} 
\renewcommand\cftsecpresnum{\S}
\renewcommand\cftsubsecpresnum{\S}
\renewcommand\cftsubsubsecpresnum{\S}
\renewcommand\cftparapresnum{\S}

% Disable hyphenation
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

% Set table cell padding
\tabulinesep=3pt
\setlength\tabcolsep{3pt}

\setlength{\parindent}{0em}
\setlength{\parskip}{0.5em}

\setcounter{secnumdepth}{4}

\titleformat{\section}
{\normalfont\Large\bfseries}
{\S\thesection}
{1em}
{}

\titleformat{\subsection}
{\normalfont\large\bfseries\color{black!80}}
{\S\thesubsection}
{1em}
{}

\titleformat{\subsubsection}
{\normalfont\normalsize\bfseries\color{black!80}}
{\S\thesubsubsection}
{1em}
{}

% Set spacing before and after sections
\titlespacing\section{0pt}{4pt plus 4pt minus 2pt}{2pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{4pt plus 4pt minus 2pt}{1pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{2pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}

\graphicspath{ {./img/} }
 
\pagestyle{fancyplain}
\renewcommand{\headrulewidth}{0pt}
\fancyhf{}
\rhead{
  Linköping \@date
  \\
  \@title
  \\
  Sida \thepage\ (\pageref{LastPage})}
\lhead{\includegraphics[height=1.3cm]{logo}}

% Footer on every page
\lfoot{
  \textbf{Postadress:}
  Datateknologsektionen, Kårallen, Universitetet, 581 83 Linköping
  \\
  \textbf{Organisationsnr:}
  822002-1409
  \textbf{Bankgironr:}
  5644-8251
  \\
  \textbf{E-post:}
  \href{mailto://sekreterare@d-sektionen.se}{sekreterare@d-sektionen.se}
  \textbf{Hemsida:}
  \href{https://www.d-sektionen.se}{www.d-sektionen.se}
}