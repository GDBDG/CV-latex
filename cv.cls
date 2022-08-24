\ProvidesClass{cv}[2022/08/10 CV class]
\NeedsTeXFormat{LaTeX2e}

\input{src/colors_settings.tex}
\DeclareOption{nocolor}{
    \input{src/no_color_settings.tex}
}
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
    }
\ProcessOptions\relax
\LoadClass{article}
\input{src/packagesCV.tex}    

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
    
    \section[\faCogs]{Compétences}
    \skilllist

    \section[\faLanguage]{Langues}
        \languages

    \section[\faCoffee]{Centres d'intérêts}
        \interests                    
    
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