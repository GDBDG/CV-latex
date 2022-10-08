\ProvidesClass{cv}[2022/08/10 CV class]
\NeedsTeXFormat{LaTeX2e}
\RequirePackage{xstring}

% Variables liées aux options
\newcommand{\languageoption}{fr}
\newcommand{\coloroption}{}

\DeclareOption{nocolor}{
    \IfEq{\coloroption}{}{\renewcommand{\coloroption}{nocolor}}{\ClassWarning{CV}{color option already changed}}
    \renewcommand{\coloroption}{nocolor}
}
\DeclareOption{en}{
    \IfEq{\languageoption}{fr}{\renewcommand{\languageoption}{en}}{\ClassWarning{CV}{color option already changed}}
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
\IfEq{\coloroption}{}{\input{src/colors_settings.tex}}{}
\IfEq{\coloroption}{nocolor}{\input{src/no_color_settings.tex}}{}
\IfEq{\languageoption}{fr}{\input{src/frenchsectiontitles.tex}}{}
\IfEq{\languageoption}{en}{\input{src/englishsectiontitle.tex}}{}


\sethighlightbar{
    \section[\faAddressBook]{\contacttitle}
        \@mail
        \@nationnality
        \@phonenumber
        \@adress
        \@permisB
    
    \vspace*{\fill}
    
    \section[\faCogs]{\skillstitle}
    \@skilllist

    \section[\faLanguage]{\languagetitle}
        \@languages

    \section[\faCoffee]{\hobbiestitle}
        \@interests                    
    
}

\setmainbar{
    \nameheader

    \section[\faGraduationCap]{\educationtitle}
        \@formation
    \section[\faCheck]{\experiencetitle}
        \@experience
        
    
}

\newcommand{\makecv}{
    \thispagestyle{empty}
    \@highlightbar
    \hspace{\dimexpr \marginleft}
    {\color{lightgray} \vrule}
    \hspace{\dimexpr \marginright}
    \@mainbar
}