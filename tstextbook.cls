%% tstextbook.cls
%% Copyright 2016 Typesetters.se
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This is a free LaTeX text book template from Typesetters.se.
% See tstextbook.tex for an example of how to use this class.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tstextbook}[2017/02/19 Free LaTeX text book template from Typesetters.se]
\LoadClass[11pt,onecolumn,titlepage,twoside,openany]{book}

% Language
%--------------------------------------------------------------------------
%\RequirePackage[swedish]{babel}
%\RequirePackage[utf8]{inputenc}
\RequirePackage[romanian]{babel}

% \RequirePackage{rom}

% Geometry
%--------------------------------------------------------------------------
\RequirePackage[top=2.5cm,bottom=2.5cm,left=3cm,right=3cm,
                marginparwidth=1.1cm,marginparsep=2mm]{geometry}

% Fonts
%--------------------------------------------------------------------------
\RequirePackage{kpfonts}

% Colors
%--------------------------------------------------------------------------
\RequirePackage[dvipsnames]{xcolor}
\definecolor{tssteelblue}{RGB}{70,130,180}
\definecolor{tsorange}{RGB}{255,138,88}
\definecolor{tsblue}{RGB}{23,74,117}
\definecolor{tsforestgreen}{RGB}{21,122,81}
\definecolor{tsyellow}{RGB}{255,185,88}
\definecolor{tsgrey}{RGB}{200,200,200}

% Graphics
%--------------------------------------------------------------------------
\RequirePackage{graphicx}
\graphicspath{{images/}}
\RequirePackage{tikz}
\RequirePackage[pages=some]{background}
\backgroundsetup{scale=1,color=black,opacity=1.0,angle=0,
contents={\includegraphics[width=\paperwidth,height=\paperheight]{cover}}}

% Header and footer styling
%--------------------------------------------------------------------------
\RequirePackage{fancyhdr}
\setlength{\headheight}{15.0pt}
\fancyhf{}
\fancyhead[LE,RO]{\bfseries\thepage}
\fancyhead[RE]{\it\sf\nouppercase{\rightmark}}
\fancyhead[LO]{\it\sf\nouppercase{\leftmark}}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Section styling
%--------------------------------------------------------------------------
\RequirePackage{sectsty}
\sectionfont{\sf\color{tssteelblue}\sectionrule{0ex}{0pt}{-1ex}{1pt}}

% Chapter styling
%--------------------------------------------------------------------------
\makeatletter

% Numbered chapters (with minitoc)
\renewcommand{\@makechapterhead}[1]{
  \begin{tikzpicture}[remember picture,overlay]
    \node at (current page.north west)
  {
    \begin{tikzpicture}[remember picture,overlay]
      % Background image
      \node[anchor=north west,inner sep=0pt] at (0,0)
           {\includegraphics[width=\paperwidth]{eu_prel}};
      % Chapter heading
      \draw[anchor=west, inner sep=0pt] (-0.1cm,-1.5cm) node
           [black,
            ultra thick,
            fill=tsorange!10,
            fill opacity=.6,
            inner sep=10pt]
           (0,0)
           {\parbox[t][1.6cm][t]{\paperwidth}
           {\huge\bfseries\sffamily\flushleft\thechapter. #1}};
      % Chapter contents
      \draw[anchor=west,inner sep=0pt] (8.8cm,-7cm) node
           [tssteelblue,
            ultra thick,
            fill=white,
            fill opacity=.8,
            draw=tssteelblue,
            draw opacity=1,
            line width=1.5pt,
            rounded corners,
            inner sep=0pt]
           (0,0)
           {\hspace{1cm}\parbox[t][7.1cm][t]{11cm}
           {\vspace{-1cm}\huge\bfseries\sffamily\flushleft
            \textcolor{black}{\sffamily\minitoc}}};
    \end{tikzpicture}
  };
\end{tikzpicture}
\vspace{7.5cm}
}

% Unnumbered chapters (without minitoc)
\renewcommand{\@makeschapterhead}[1]{
  \begin{tikzpicture}[remember picture,overlay]
    \node at (current page.north west)
  {
    \begin{tikzpicture}[remember picture,overlay]
      % Background image
      \node[anchor=north west,inner sep=0pt] at (0,0)
           {\includegraphics[width=\paperwidth]{eu_prel}};
      % Chapter heading
      \draw[anchor=west,inner sep=0pt] (-0.1cm,-1.5cm) node
           [black,
            ultra thick,
            fill=tsorange!10,
            fill opacity=.6,
            inner sep=10pt]
           (0,0)
           {\parbox[t][1.6cm][t]{\paperwidth}
           {\huge\bfseries\sffamily\flushleft #1}};
    \end{tikzpicture}
  };
\end{tikzpicture}
\vspace{8cm}
}

% Minitoc styling
%--------------------------------------------------------------------------
\RequirePackage{minitoc}
\setcounter{minitocdepth}{2}
\dominitoc[n]
\nomtcrule
\nomtcpagenumbers
\renewcommand{\mtifont}{\large\sffamily}
\renewcommand{\mtcfont}{\small\sffamily}
\renewcommand{\mtcSfont}{\small\sffamily}
\renewcommand{\mtcSSfont}{\small\sffamily}
\renewcommand{\mtcSSSfont}{\small\sffamily}

% Table of contents styling
%--------------------------------------------------------------------------
\RequirePackage{titletoc}
\setcounter{tocdepth}{2}

\titlecontents{chapter}[0cm]
{\addvspace{14pt}\large\sffamily\bfseries}
{\color{tssteelblue}\contentslabel[\Large\thecontentslabel]{1.25cm}}{}
{\color{tssteelblue}\normalsize\sffamily\bfseries
 \;\titlerule*[.5pc]{.}\;\thecontentspage}

\titlecontents{section}[0cm]
{\addvspace{6pt}\sffamily\bfseries}
{\contentslabel[\thecontentslabel]{1.25cm}}{}
{\sffamily\hfill\color{black}\thecontentspage}[]

% Front matter
%--------------------------------------------------------------------------
\newcommand{\tsbook}[9]{

\pagestyle{empty}

\def\@tstitle{#1}
\def\@tsauthor{#2}
\def\@tscoverdesign{#3}
\def\@tsyear{#4}
\def\@tsartno{#5}
\def\@tsisbn{#6}
\def\@tsedition{#7}
\def\@tspublished{#8}
\def\@tsprinted{#9}

% Title page
\BgThispage
\begin{center}
  \null
  \smallskip

  \color{black}
  \sffamily

  \Huge
  \textsc{\@tstitle}

  \bigskip
  \bigskip
  \bigskip

  \LARGE
  \textsc{\@tsauthor} \\[1em]
  \Large
  \textsc{\@tspublished}
\end{center}

\pagebreak

% Copyright page
\null
% \vfill
%\begin{flushleft}
%\large{Acest document ilustreaza noul mod de desfasurare a laboratoarelor de ELTH la facultatile de IE si A\&C, bazat pe imbinarea celor trei aspecte ale domeniului Calculelor stiintifice in inginerie (CSE -- \textit{Computational science and engineering}): conceptele (lumea ideilor), simularile (lumea virtuala) si experimentele (lumea reala). Documentul este structurat ca un indrumar de laborator si vine in sprijinul stilului de lucru propus in \cite{prezentareCircuiteCC}.
%}\\
%\end{flushleft}
%\begin{flushleft}
%\large{Titlul lucrarii alese este ''Divizorul de tensiune''. Aceasta este prima lucrare de laborator, recomandat a fi efectuata dupa ce studentii parcurg la curs si/sau seminar conceptele de: tensiune electrica, intensitate a curentului electric, legile circuitelor (Kirchhoff si puteri) si elementele ideale de circuit dipolare: rezistorul liniar, sursa ideala de tensiune (SIT), sursa ideala de curent (SIC). 
%}\\
%\end{flushleft}
%\begin{flushleft}
%\large{Lucrarea incepe cu o parte introductiva in care se prezinta motivatia temei, prin descrierea unor exemple practice precum si scopul lucrarii. Partea introductiva se incheie cu un chestionar pe moodle pe care studentul il poate folosi pentru verificarea cunostintelor prezentate la curs, relevante pentru aceasta lucrare.
%}\\
%\end{flushleft}
%\begin{flushleft}
%\large{Urmeaza apoi o sectiune de concepte necesare intelegerii lucrarii. Sunt analizate circuitele care vor fi studiate, prezentandu-se nu numai aspectele strict legate de teoria circuitelor, dar si conexiunile cu teoria sistemelor. Tot aici sunt explicate si concepte de metode numerice ce vor permite estimarea cantitativa a erorilor rezultatelor. Capitolul se incheie de asemenea cu un chestionar care verifica intelegerea acestor concepte. 
%}\\
%\end{flushleft}
%\begin{flushleft}
%\large{Sectiunea a treia este dedicata simularilor in SPICE. Sunt prezentate atat lucrul cu un fisier \textit{netlist}, cat si lucrul in \textit{schematics}, sub forma unui mic tutorial \textit{hands-on}. Studentii vor compara valorile simulate cu cele calculate in sectiunea anterioara. 
%}\\
%\end{flushleft}
%\begin{flushleft}
%\large{Sectiunea a patra descrie modul de desfasurare a lucrarii de laborator. Mai intai sunt descrise obiectele folosite pentru experimente: rezistoarele, sursa de tensiune, placa \textit{breadboard}, aparatul de masura. Sectiunea include o discutie despre scala de masura, toleranta aparatelor si implicatiile lor in validare, adica in compararea rezultatelor teoretice si/sau simulate cu cele masurate experimental. La finalul acestei parti, studentii vor completa un chestionar pe baza experimentelor realizate in timpul laboratorului. 
%}\\
%\end{flushleft}
%\begin{flushleft}
%\large{Ultima sectiune descrie modul de notare a laboratorului. Studentii vor fi incurajati sa rezolve exercitiile din primele trei sectiuni inainte de sedinta de laborator propriu-zisa si sa isi pregateasca un draft al referatului de laborator. Dupa lucrarea practica, studentii vor completa referatul cu datele obtinute experimental si cu concluziile personale. Figura \ref{fig:captura_moodle} reprezinta o captura de pe moodle, unde se pot observa informatiile puse la dispozitia studentilor:
%}\\
%\end{flushleft}
%\begin{enumerate}
%\item Indrumarul de laborator (acest document).
%\item O prezentare ce va fi folosita in timpul laboratorului.
%\item Chestionarele preliminare -- care se pot rula de oricate ori, pana in preziua laboratorului.
%\item Chestionarul din timpul laboratorului -- poate fi rulat o singura data. El contine intrebari legate de experimente, dar si cateva intrebari teoretice.
%\item Alte documente utile si referinte.
%\end{enumerate}
%\begin{figure}[!b]
%  \centering
%    \includegraphics[width=0.7\textwidth]{figuri/captura_moodle}
%  \caption{Captura de pe moodle cu informatiile puse la dispozitia studentilor.}
%  \label{fig:captura_moodle}
%\end{figure}

% \begin{flushleft}
%  Copyright \copyright \ \@tsyear \ \@tsauthor \\
%  \vspace{5mm}
%  \textbf{Copying prohibited} \\
%  \vspace{5mm}
%  All rights reserved. No part of this publication may be reproduced
%  or transmitted in any form or by any means, electronic or
%  mechanical, including photocopying and recording, or by any
%  information storage or retrieval system, without the prior written
%  permission of the publisher. \\
%  \vspace{5mm}
%  Art. No \@tsartno \\
%  ISBN \@tsisbn \\
%  Edition \@tsedition \\
%  \vspace{5mm}
%  Cover design by \@tscoverdesign \\
%  \vspace{5mm}
%  Published by \@tspublished \\
%  Printed in \@tsprinted
%\end{flushleft}


% Table of contents
\tableofcontents

\cleardoublepage
\pagestyle{fancy}
\thispagestyle{empty}
}

% Boxes for theorems
%--------------------------------------------------------------------------
\newenvironment{boxtheorem}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=black!5,colframe=tsorange]}
{\end{tcolorbox}}

\newenvironment{boxdefinition}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=yellow!10!white,boxrule=0pt,frame hidden,
 borderline west={1.5mm}{-2mm}{tsforestgreen}]}
{\end{tcolorbox}}

\newenvironment{boxobserv}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=yellow!10!white,boxrule=0pt,frame hidden,
 borderline west={0.7mm}{-2mm}{tsforestgreen}]}
{\end{tcolorbox}}

\newenvironment{boxindicatie}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=yellow!10!white,boxrule=0pt,frame hidden,
 borderline west={0.4mm}{-2mm}{tsforestgreen}]}
{\end{tcolorbox}}

\newenvironment{boxexercise}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=tsyellow!20,boxrule=0pt,frame hidden]}
{\end{tcolorbox}}

\newenvironment{boxproblem}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=tsorange!25,boxrule=0pt,frame hidden]}
{\end{tcolorbox}}

\newenvironment{boxprogramming}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=tsblue!10,boxrule=0pt,frame hidden]}
{\end{tcolorbox}}

\newenvironment{boxexample}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=tsgrey!20,boxrule=0pt,frame hidden]}
{\end{tcolorbox}}

\newenvironment{boxretine}
{\begin{tcolorbox}
[enhanced jigsaw,breakable,pad at break*=1mm,
 colback=black!5,colframe=tsorange]}
{\end{tcolorbox}}

% Styling of theorems
%--------------------------------------------------------------------------
\RequirePackage{amsthm}

\newtheoremstyle{styletheorem}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{tsorange}}{\;}{0.25em}
{\small\sffamily\color{tsorange}\thmname{#1}
 \nobreakspace\thmnumber{\@ifnotempty{#1}{}\@upn{#2}}
 \thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black} (#3)}}

\newtheoremstyle{styledefinition}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{black}}{\;}{0.25em}
{\small\sffamily\color{tsforestgreen}\thmname{#1}
 \nobreakspace\thmnumber{\@ifnotempty{#1}{}\@upn{#2}}
 \thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black} (#3)}}

\newtheoremstyle{styleobserv}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{black}}{\;}{0.25em}
{\small\sffamily\color{tsforestgreen}\thmname{#1}
 \nobreakspace\thmnumber{\@ifnotempty{#1}{}\@upn{#2}}
 \thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black} (#3)}}

\newtheoremstyle{styleindicatie}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{black}}{\;}{0.25em}
{\small\sffamily\color{tsforestgreen}\thmname{#1}
 \nobreakspace\thmnumber{\@ifnotempty{#1}{}\@upn{#2}}
 \thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black} (#3)}}

\newtheoremstyle{styleexercise}
{0pt}{0pt}{\normalfont}{0pt}{\small\bf\sffamily\color{black}}{\;}{0.25em}
{\small\sffamily\color{black}\thmname{#1}
 \nobreakspace\thmnumber{\@ifnotempty{#1}{}\@upn{#2}}
 \thmnote{\nobreakspace\the\thm@notefont\sffamily\bfseries\color{black} (#3)}}

\theoremstyle{styledefinition}
\newtheorem{envdefinition}{Paranteza}[chapter]
\theoremstyle{styletheorem}
\newtheorem{envtheorem}{Theorem}[chapter]
\newtheorem{envlemma}{Lemma}[chapter]
\theoremstyle{styleexercise}
\newtheorem{envexercise}{Exercitiul}[chapter]
\newtheorem{envproblem}{Problem}[chapter]
\newtheorem{envprogramming}{Computer exercise}[chapter]
\newtheorem{envexample}{Exemplul}[chapter]
\theoremstyle{styletheorem}
\newtheorem*{envretine}{De re\c{t}inut}
% mihai 06/03/2020
\theoremstyle{styleobserv}
\newtheorem*{envobserv}{Observa\c{t}ii}
\theoremstyle{styleindicatie}
\newtheorem*{envindicatie}{Indica\c{t}ie}

% Environments for theorems
%--------------------------------------------------------------------------
\newenvironment{definition}
               {\begin{boxdefinition}\begin{envdefinition}}
               {\end{envdefinition}\end{boxdefinition}}

\newenvironment{observ}
               {\begin{boxobserv}\begin{envobserv}}
               {\end{envobserv}\end{boxobserv}}

\newenvironment{indicatie}
               {\begin{boxindicatie}\begin{envindicatie}}
               {\end{envindicatie}\end{boxindicatie}}

\newenvironment{theorem}
               {\begin{boxtheorem}\begin{envtheorem}}
               {\end{envtheorem}\end{boxtheorem}}

\newenvironment{corollary}
               {\begin{boxtheorem}\begin{envtheorem}}
               {\end{envtheorem}\end{boxtheorem}}

\newenvironment{lemma}
               {\begin{boxtheorem}\begin{envlemma}}
               {\end{envlemma}\end{boxtheorem}}

\newenvironment{exercise}
               {\begin{boxexercise}\begin{envexercise}}
               {\end{envexercise}\end{boxexercise}}

\newenvironment{problem}
               {\begin{boxproblem}\begin{envproblem}}
               {\end{envproblem}\end{boxproblem}}

\newenvironment{programming}
               {\begin{boxprogramming}\begin{envprogramming}}
               {\end{envprogramming}\end{boxprogramming}}

\newenvironment{example}
               {\begin{boxexample}\begin{envexample}}
               {\end{envexample}\end{boxexample}}

\newenvironment{retine}
               {\begin{boxretine}\begin{envretine}}
               {\end{envretine}\end{boxretine}}

% Other environments
%--------------------------------------------------------------------------
\newenvironment{summary}
{\hspace{10pt}\par\small\it
 \begin{list}{}{\leftmargin=35pt\rightmargin=25pt}
 \item\ignorespaces\advance\baselineskip -1pt}
{\end{list}\vspace{-0.5cm}}

\newenvironment{remark}
{\vspace{0.5cm}\noindent\small\it
 \marginpar{\vspace{-3mm}\includegraphics[width=1.0cm]{idea}}}
{\vspace{0.5cm}}

% Bibliography
%--------------------------------------------------------------------------
\RequirePackage[backend=biber]{biblatex}
\addbibresource{bibliography.bib}

% Index
%--------------------------------------------------------------------------
\RequirePackage{makeidx}
\makeindex

% Packages for mathematics and algorithms
%--------------------------------------------------------------------------
\RequirePackage{algorithm}
\RequirePackage{algpseudocode}
\RequirePackage{xfrac}
\RequirePackage{mathtools}
\RequirePackage{wasysym}
\RequirePackage{siunitx}
\newcommand\bmmax{2}
\RequirePackage{bm}

% Other useful packages
%--------------------------------------------------------------------------
\RequirePackage{blindtext}
\RequirePackage[most]{tcolorbox}
\RequirePackage{booktabs}
\RequirePackage{url}
