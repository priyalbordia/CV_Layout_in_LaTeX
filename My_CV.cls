\LoadClass[12cm]{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{My_CV}[2022/11/18 My custom CV class]

\RequirePackage{latexsym}
\RequirePackage[empty]{fullpage}
\RequirePackage[a4paper]{geometry}
\RequirePackage[utf8]{inputenc}
\RequirePackage{times}
\RequirePackage[english]{babel}
\RequirePackage{verbatim}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{randtext}
\RequirePackage{titlesec}
\RequirePackage[pdftex]{hyperref}
\RequirePackage[x11names]{xcolor}
\RequirePackage{hyphenat}
\RequirePackage{ragged2e}
\RequirePackage{parskip}
\RequirePackage{paracol}
\RequirePackage{fontawesome}
\RequirePackage{marvosym}
\RequirePackage{smartdiagram}
\RequirePackage{fancybox}



% Hyperlink Formatting
\hypersetup{
    colorlinks=true,
    urlcolor=LightPink3,
    filecolor=Orange1,      
    linkcolor=Turquoise3
}

\let\oldhref\href
\renewcommand{\href}[2]{\oldhref{#1}{\bfseries#2}}



% Page Style
\geometry{top=1cm, bottom=1cm, left=1cm, right=1cm}

% Page Style
\pagestyle{fancy}
\fancyhf{}
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}



% Page numbering
\pagenumbering{arabic}
\rfoot{\textit{CV - Page \thepage}}
\setlength{\footskip}{0.75cm}



% Sections formatting
\titleformat{\section}{\scshape \raggedright \Large \bfseries \color{Aquamarine4}}{}{0em}{}[\color{RosyBrown3}{\rule[1cm]{7cm}{1mm}} \vspace{-1cm}]

\titleformat{\subsection}{\scshape \raggedright \Large \bfseries \color{SteelBlue3}}{}{0em}{}[\color{RosyBrown3}{\rule[1cm]{3cm}{1mm}} \vspace{-1cm}]



% Color coding
\newcommand\cbfa[1]{\textcolor{Plum4}{\textbf{#1}}} % Most-Important
\newcommand\cbfb[1]{\textcolor{Tan3}{\large \scshape \textbf{#1}}} % 2nd Most-Important
\newcommand\cbfc[1]{\textcolor{Gold3}{\textbf{#1}}} % 3rd Most-Important
\newcommand\cbfd[1]{\textcolor{darkgray}{\textbf{#1}}} % Other bold 
\newcommand\cbfe[1]{\textcolor{black}{\large \scshape \textbf{#1}}}
\newcommand\cita[1]{\textcolor{darkgray}{\textit{#1}}} % Important Names
