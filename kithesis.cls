\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kithesis}[2020/11/01 Thesis of KI UJEP]

\RequirePackage{ifthen}
\RequirePackage{iftex}

\newboolean{feminum}
\newboolean{czechlang}

\DeclareOption{male}{\setboolean{feminum}{false}}
\DeclareOption{female}{\setboolean{feminum}{true}}
\ProcessOptions\relax

\ifthenelse{\boolean{czechlang}}{%
\LoadClass[12pt,czech,english,bibliography=totoc]{scrbook}}{%
\LoadClass[12pt,english, czech,bibliography=totoc]{scrbook}}

\RequirePackage[a4paper]{geometry}
\geometry{verbose,margin=2cm,top=2.5cm,headheight=1cm,footskip=1.25cm}

% nastavení stránky
\RequirePackage{fancyhdr}
\fancyhf{}
\fancyfoot[CE,CO]{\arabic{page}}
\fancyhead[LE,RO]{\leftmark}
\fancyhead[LO,RE]{}

\fancypagestyle{plain}{%
\fancyhf{} % prázdné záhlaví
\fancyfoot[C]{\thepage} % except the center
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}}


\renewcommand{\chaptermark}[1]{\markboth{\arabic{chapter}. #1}{}}

%nastavení hloubky číslování a hloubky obsahu (do sections)
\setcounter{secnumdepth}{1} 
\setcounter{tocdepth}{1}

%nastavení odstavců
\setlength{\parskip}{\medskipamount}  % malá mezera mezi odstavci
\setlength{\parindent}{0pt} % žádné odsazení prvního řádku
\RequirePackage{setspace}
\onehalfspacing % řádkování 1 a půl

% nastavení českých typografických pravidel
% \iftutex
% \RequirePackage{polyglossia}
% \ifthenelse{\boolean{czechlang}}{\setdefaultlanguage{czech}}{\setdefaultlanguage{english}}
% \else
% \usepackage{babel}
% \fi

