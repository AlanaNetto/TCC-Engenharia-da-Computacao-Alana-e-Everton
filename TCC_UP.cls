%  -----------------------------------------------------------------------
% |         Baseado no modelo trabalho ABNTEX - por Lauro Cesar           |
% | ABNT NBR 14724:2011: Informação e documentação - Trabalhos acadêmicos |
% |                              Apresentação                             |
%  -----------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{TCC_UP}

\LoadClass[a4paper,12pt,openright,oneside,chapter=TITLE,section=TITLE,hidelinks,english,brazil]{abntex2}
\RequirePackage[alf,abnt-emphasize=bf,abnt-repeated-author-omit=yes,abnt-etal-text=it]{abntex2cite}

\RequirePackage{indentfirst}
\RequirePackage[utf8]{inputenc}
\RequirePackage{lastpage}
\RequirePackage{etoolbox}
\RequirePackage{multibib}
\RequirePackage[within=none]{newfloat}
\usepackage[T1]{fontenc}		
\usepackage{graphicx}			
\usepackage{microtype}
\usepackage[alf]{abntex2cite}
\setlength{\parindent}{1.3cm}
\setlength{\parskip}{0.2cm}

\graphicspath{{Imagens/}}

\RequirePackage{tgtermes}
\RequirePackage[font=normalsize]{caption}
\renewcommand{\ABNTEXchapterfont}{\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}
    \renewcommand{\ABNTEXsectionfont}{}
    \renewcommand{\ABNTEXsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsectionfont}{\bfseries}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}
    \renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTEXsubsubsubsectionfont}{\itshape}

\setlrmarginsandblock{3cm}{2cm}{*}
\setulmarginsandblock{3cm}{2cm}{*}
\checkandfixthelayout

%  -----------------------------------------------------------------------
% |                    Função Curso e ImprimeCurso                        |
%  -----------------------------------------------------------------------
\providecommand\imprimircurso{\erro\curso}
\newcommand*\curso[1]{\renewcommand{\imprimircurso}{#1 }}

\providecommand\imprimirescola{\erro\escola}
\newcommand*\escola[1]{\renewcommand{\imprimirescola}{#1 }}

%  -----------------------------------------------------------------------
% |                    Função Tipo do Trabalho                            |
%  -----------------------------------------------------------------------
\newcommand{\TipoPrototipo}{\def\Prototipo{}}
\newcommand{\TipoPesquisa}{\def\Pesquisa{}}

%  -----------------------------------------------------------------------
% |                      Cria o Ambiente Quadro                           |
%  -----------------------------------------------------------------------
\newcommand{\quadroname}{Quadro}
\newcommand{\listofquadrosname}{Lista de Quadros}

\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}

\setfloatadjustment{quadro}{\centering}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space} 
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}

\setfloatlocations{quadro}{hbtp}
\addto\captionsbrazil{
    \renewcommand{\listfigurename}{Lista de Figuras}
}

\captionsetup{singlelinecheck = false, justification=raggedright, labelsep=space}

%  -----------------------------------------------------------------------
% |                        Constrói a capa                                |
%  -----------------------------------------------------------------------
\renewcommand{\imprimircapa}{
  \begin{capa}
    \center
    \ABNTEXchapterfont\bfseries\Large \MakeUppercase\imprimirinstituicao \\
    \ABNTEXchapterfont\bfseries\Large \MakeUppercase\imprimirescola \\
    \ABNTEXchapterfont\bfseries\Large \MakeUppercase\imprimircurso \\
    \vspace*{3cm}
    {\ABNTEXchapterfont\large\MakeUppercase\imprimirautor}
    \vfill
    \begin{center}
        \ABNTEXchapterfont\bfseries\LARGE \MakeUppercase\imprimirtitulo
    \end{center}
    \vfill
    \large\MakeUppercase\imprimirlocal \\
    \large\MakeUppercase\imprimirdata
    \vspace*{1cm}
  \end{capa}
}

%  -----------------------------------------------------------------------
% |                     Constrói a Folha de Rosto                         |
%  -----------------------------------------------------------------------
\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
    {\ABNTEXchapterfont\large\MakeUppercase\imprimirautor}
    \vspace*{\fill}\vspace*{\fill}
    \begin{center}
        \ABNTEXchapterfont\bfseries\Large\MakeUppercase\imprimirtitulo
    \end{center}
    \vspace*{\fill}

    \abntex@ifnotempty{\imprimirpreambulo}{
      \hspace{.45\textwidth}
      \begin{minipage}{.5\textwidth}
      \SingleSpacing
      \imprimirpreambulo \\ \\
      {\imprimirorientadorRotulo~\imprimirorientador\par}
      {\imprimircoorientadorRotulo~\imprimircoorientador}
      \end{minipage}
      \vspace*{\fill}
    }
    
    \vspace*{\fill}
    {\large\MakeUppercase\imprimirlocal}
    \par
    {\large\MakeUppercase\imprimirdata}
    \vspace*{1cm}
\end{center}
}
\makeatother

\setlength\cftbeforechapterskip{0cm}

