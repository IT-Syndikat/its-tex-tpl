% vim: set filetype=tex :

\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{itsarticle}[2015/06/02 ITS Article Class]
\LoadClass[10pt,a4paper,parskip=half,titlepage]{scrartcl}

% fixes pre
\usepackage{fixltx2e}

% font
\usepackage[math]{iwona}
\usepackage[no-math]{fontspec}
    \setmainfont{DroidSerif}
    \setsansfont{DroidSans}
    \setmonofont{DroidSansMono}[Scale=0.8]

% color
\usepackage{xcolor}
    \definecolor{itsorange}{HTML}{DD6500}

% page
\usepackage{anysize}

% math
\usepackage{amsmath}
\usepackage{amssymb}
    \let\emptyset\varnothing
\usepackage{mathtools}
    \mathtoolsset{centercolon}
\usepackage{amsthm}
    \newtheoremstyle{plain}{\topsep}{\topsep}{\normalfont}{10pt}{\bfseries}{\normalfont:}{5pt}{}
    \theoremstyle{plain}
    \newtheorem{theorem}{Theorem}[section]
    \newtheorem{corollary}[theorem]{Corollary}
    \newtheorem{notation}[theorem]{Notation}
    \newtheorem{definition}[theorem]{Definition}
    \renewcommand{\proofname}{Proof:}

% SI units
\usepackage[binary-units,per-mode=symbol]{siunitx}
    \sisetup{detect-all}

% keys and menus
\usepackage[os=win]{menukeys}
    \changemenuelement{hyphenatepathswithfolder}{sep}{ / }
    \renewmenumacro{\menu}[>]{angularmenus}
    \renewmenumacro{\directory}[/]{hyphenatepathswithfolder}

% graphics
\usepackage{tikz}
\usepackage{graphicx}
    \graphicspath{{gfx/}}

% quote
\usepackage{mdframed}
    \newmdenv[
        topline=false,
        bottomline=false,
        rightline=false,
    ]{blockquote}
\renewenvironment{quote}
    {\hfill\begin{minipage}{0.95\textwidth}\begin{blockquote}}
    {\end{blockquote}\end{minipage}}

% links
\usepackage{hyperref}
    \hypersetup{
        colorlinks      = true,
        citecolor       = itsorange,
        citebordercolor = itsorange,
        linkcolor       = itsorange,
        linkbordercolor = itsorange!40,
        urlcolor        = itsorange,
        pdfstartview    = {XYZ null null null},
        pdfpagemode     = UseOutlines,
    }
    \renewcommand{\equationautorefname}{equation}
    \renewcommand{\figureautorefname}{figure}
    \renewcommand{\tableautorefname}{table}
    \urlstyle{same}
    \usepackage[all]{hypcap}

% PDFs
\usepackage{pdfpages}

% references
\usepackage{cleveref}
\usepackage[numbers]{natbib}
    \bibliographystyle{plainnat}

% additional symbols
\usepackage{MnSymbol}

% source code
\usepackage{listings}
    \lstset{
        basicstyle=\scriptsize\ttfamily,
        breaklines=true,
        breakindent=0pt,
        prebreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\lcurvearrowdown}},
        xleftmargin=0.05\linewidth,
        xrightmargin=0.05\linewidth,
    }
    \newcommand{\exec}[1]{\lstinputlisting{|#1}}

\usepackage{minted}
    \renewcommand{\theFancyVerbLine}{\normalfont{\tiny\arabic{FancyVerbLine}}}
    \renewcommand{\listingscaption}{\normalfont Listing}
    \renewcommand{\listoflistingscaption}{List of Listings}
    \newminted[code]{text}{fontsize=\scriptsize,frame=leftline,framesep=2mm,linenos}
    \newminted[pre]{text}{fontsize=\scriptsize,framesep=2mm}
    \newminted{c}{fontsize=\scriptsize,frame=leftline,framesep=2mm,linenos}

% tables
\let\@itstoc\tableofcontents
\def\tableofcontents{
    \phantomsection
    \@itstoc
}
\let\@itstof\listoffigures
\def\listoffigures{
    \phantomsection
    \@itstof
}
\let\@itstot\listoftables
\def\listoftables{
    \phantomsection
    \@itstot
}
\let\@itstol\listoflistings
\def\listoflistings{
    \phantomsection
    \@itstol
}
\let\@itsbib\bibliography
\def\bibliography{
    \phantomsection
    \@itsbib
}

% title
\usepackage{titling}
    \pretitle{
        \begin{center}
        \includegraphics[width=0.4\linewidth]{its_logo}\\
        \end{center}
        \vspace{40mm}
        \begin{flushright}
        \LARGE\sffamily
    }
    \posttitle{
        \par\end{flushright}\vspace{10mm}
    }
    \preauthor{
        \begin{flushright}
        \vspace{20mm}
        \large\sffamily\bfseries
    }
    \postauthor{
        \end{flushright}
    }
    \predate{
        \begin{flushright}\large\sffamily
    }
    \postdate{
        \par\end{flushright}
    }

% fixes post
\usepackage{scrhack}

% minted style
\usemintedstyle{tango}
