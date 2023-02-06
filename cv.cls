\ProvidesClass{cv}[2022/08/10 CV class]
\NeedsTeXFormat{LaTeX2e}
\RequirePackage{xstring}

% Variables liées aux options
\newcommand{\languageoption}{fr}
\newcommand{\coloroption}{}
\newcommand{\technologo}{}
\newcommand{\skillslogo}{}
\DeclareOption{nocolor}{
    \IfEq{\coloroption}{}{}{\ClassWarning{CV}{color option already changed}}
    \renewcommand{\coloroption}{nocolor}
    \renewcommand{\skillslogo}{false}
    \renewcommand{\technologo}{false}
}
\DeclareOption{en}{
    \IfEq{\languageoption}{fr}{\renewcommand{\languageoption}{en}}{\ClassWarning{CV}{color option already changed}}
}
\DeclareOption{notechnologo}{
    \renewcommand{\technologo}{false}
}
\DeclareOption{noskillslogo}{
    \renewcommand{\skillslogo}{false}
    \renewcommand{\technologo}{false}
}
\DeclareOption*{
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass[10pt]{article}

\input{src/packagesCV.tex}    
\input{src/geometry_settings.tex}
\input{src/section/section_settings.tex}
\input{src/variables.tex}
\IfEq{\technologo}{false}{\renewcommand{\textlogo}[1]{}}{}
\IfEq{\coloroption}{}{\input{src/colors/colors_settings.tex}}{}
\IfEq{\coloroption}{nocolor}{\input{src/colors/no_color_settings.tex}}{}
\IfEq{\languageoption}{fr}{\input{src/section/frenchsectiontitles.tex}}{}
\IfEq{\languageoption}{en}{\input{src/section/englishsectiontitle.tex}}{}
\input{data/technos.tex}


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
    
    \IfEq{\iscertificationempty}{true}{}{
        \section[\faAward]{\certificationtitle}
            \@certifications
    }
}

\setmainbar{
    \nameheader

    % \section[\faGraduationCap]{\educationtitle}
    %     \@formation
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