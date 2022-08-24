\ProvidesClass{cv}[2022/08/10 CV class]
\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\input{src/packagesCV.tex}

\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax

\input{src/colors_settings.tex}
\input{src/geometry_settings.tex}
\input{src/section_settings.tex}
\input{src/variables.tex}

\highlightbar{
    \section[\faAddressBook]{CONTACT}
        \mail
        \nationnality
        \numberphone
        \adress
        \permisB
    
    \vspace*{\fill}
    
    \section[\faCogs]{SKILLS}
    \skilllist

    \section[\faLanguage]{Langues}
        \small{
            \languages
        }

    \section[\faCoffee]{Centres d'intérêts}
        \begin{itemize}
            \interests                    
        \end{itemize}
    
}

\mainbar{
    \nameheader

    \section[\faGraduationCap]{Formation}
        \formation
    \section[\faCheck]{Expériences}
        \experience
        
    
}

\newcommand{\makecv}{
    \thispagestyle{empty}
    \@highlightbar
    \hspace{\dimexpr \marginleft}
    {\color{lightgray} \vrule}
    \hspace{\dimexpr \marginright}
    \@mainbar
}