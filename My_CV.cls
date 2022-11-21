\LoadClass[12cm]{article}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{My_CV}[2022/11/18 My custom CV class]

\RequirePackage{latexsym}
\RequirePackage[empty]{fullpage}
\RequirePackage{times}
\RequirePackage{titlesec}
\RequirePackage{marvosym}
\RequirePackage{verbatim}
\RequirePackage{enumitem}
\RequirePackage[pdftex]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage{fontawesome}
\RequirePackage[x11names]{xcolor}
\RequirePackage[utf8]{inputenc}
\RequirePackage{paracol}
\RequirePackage[english]{babel}
\RequirePackage{parskip}
\RequirePackage{ragged2e}
\RequirePackage{hyphenat}
\RequirePackage[a4paper]{geometry}
\RequirePackage{smartdiagram}
\RequirePackage{adjustbox}
\RequirePackage{accsupp}



% Hyperlink Formatting
\hypersetup{%
    colorlinks=true,% hyperlinks will be black
    urlcolor=LightPink3, % Add your preferred color for hyperlink text
    urlbordercolor=blue,% hyperlink borders will be gray
    pdfborderstyle={/S/U/W 0.5}% border style will be underline of width 1pt
}



% Page Style
\geometry{top=1cm, bottom=1cm, left=1cm, right=1cm}

\urlstyle{same}

\raggedbottom
\raggedright



% Page numbering
\pagenumbering{arabic}
\rfoot{Page \thepage}
\setlength{\footskip}{0.75cm}



% Sections formatting PeachPuff2
\titleformat{\section}{\vspace{0.25cm}\scshape \raggedright \Large \bfseries \color{Aquamarine4}}{}{0em}{}[\color{RosyBrown3}{\rule[1cm]{7cm}{1mm}} \vspace{-1cm}]

\titleformat{\subsection}{\vspace{0.25cm}\scshape \raggedright \Large \bfseries \color{SteelBlue3}}{}{0em}{}[\color{RosyBrown3}{\rule[1cm]{3cm}{1mm}} \vspace{-1cm}]



% Color coding
\newcommand\cbfa[1]{\textcolor{Plum4}{\textbf{#1}}} % Important things to focus
\newcommand\cbfb[1]{\textcolor{magenta}{\textbf{#1}}}
\newcommand\cbfc[1]{\textcolor{Tan3}{\textbf{#1}}} % Mid-section title
\newcommand\cbfd[1]{\textcolor{darkgray}{\textbf{#1}}} % Other bold
\newcommand\cita[1]{\textcolor{darkgray}{\textit{#1}}} % Important Names



% CV Skill
\newcommand{\cvskill}[2]{%
  \textcolor{DarkSeaGreen4}{\large{#1}}\hfill
  \BeginAccSupp{method=plain,ActualText={#2}}
  \foreach \x in {1,...,5}{%
    \ifdimequal{\x pt - #2 pt}{0.5pt}%
    {\clipbox*{0pt -0.25ex {.5\width} {\totalheight}}{\color{Pink2}\ratingmarker}%
     \clipbox*{{.5\width} -0.25ex {\width} {\totalheight}}{\color{Snow3}\ratingmarker}}
    {\ifdimgreater{\x bp}{#2 bp}{\color{Snow3}}{\color{Pink2}}\ratingmarker}%
  }\EndAccSupp{}\par%
}

\newcommand{\ratingmarker}{\faCircle}
