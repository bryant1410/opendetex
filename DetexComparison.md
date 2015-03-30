# Comments #
Note that original Detex was removing `\verb` and `\footnote` commands, `figure` and `table` environments, so you were not able to check spelling in image/table captions or footnotes. `\linebreak` command caused misinterpreting of document in original Detex.

In original Detex, three pauses in source (---) remained three pauses in output. Also quotes were left in their original shape, which caused problems in word processors/spellcheckers.

OpenDetex leaves less meaningless numbers and text, coming from arguments of LaTeX commands (`\setcounter{page}{2142}` leaves `2142` in original Detex).

Both versions handle correctly section headers, text formatting (`\textbf` etc.), hyphenation (`\-` doesn't matter), nonbreakable spaces (`~`).

# LaTeX source #

```
\documentclass[draft]{book}
\usepackage{makeidx}
\usepackage[pdftex]{hyperref}
\usepackage{color}
\usepackage{graphicx}
\usepackage{verbatim}
\newcommand{\sidebox}[1]{ %
	\marginpar{#1}
}
\newenvironment{uwaga}{%
  \def\FrameCommand{\fboxsep=\FrameSep \colorbox{uwagacolor}}%
  \MakeFramed {\FrameRestore}}%
 {\endMakeFramed}
\definecolor{urlcolor}{rgb}{0.27,0.51,0.71}
\hypersetup{pdftitle={C},
	pdfauthor={auth},
	pdfsubject={some subj},
	pdfkeywords={keywords},
	colorlinks=true,
}
\begin{document}

\tableofcontents
\setcounter{page}{2142}

\chapter*{First}

\subparagraph*{Something}

Begin of~text. \textbf{Bold}, \texttt{teletype}, \textsc{small caps} etc.
\emph{Emphasis} \verb+verb1+ -- or --- \verb!verb2!

Now label\label{notShown} and reference\ref{notShown} and
another\pageref{notShown} indexing \index{notShown}. Also don't show
cites without\cite{notShown}, or with space \cite{notShown}.

Footnotes have to \footnote{be shown} also with \footnote[0]{numbers\\or
\textbf{complex} --- content}.

Now hy\-phe\-na\-tion and ,,various'' ,,styles" ``of'' ``quotes" `more'.

Special characters: test\slash{}slash

\begin{minipage}[t]{0.5\textwidth}
This is minipage.
\end{minipage}

\begin{figure}[htp]
	\centering
	\includegraphics[scale=0.333]{img/overview}
	\caption{This is figure.}
\end{figure}

\begin{table}[H]
\begin{tabular}{|l|r|l|}
\hline
A & 3 & B \\ \hline
B & 4 & A \\ \hline
\end{tabular}
\caption{This is table.}
\end{table}

\begin{sloppypar}
Hey, this is sloppypar!
\end{sloppypar}

Paragraph\linebreak[3]markup\linebreak{}commands

Later on\ldots

\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{Index}
\printindex

\end{document}
```

# Detex 2.8 #

```














pdftitle=C,
	pdfauthor=auth,
	pdfsubject=some subj,
	pdfkeywords=keywords,
	colorlinks=true,




2142

*First

*Something

Begin of text. Bold, teletype, small caps etc.
Emphasis  -- or --- 

Now label and reference and
another indexing  . Also don't show
cites without, or with space .

Footnotes have to   also with  
.

Now hyphenation and ,,various'' ,,styles" ``of'' ``quotes" `more'.

Special characters: testslash

[t]0.5
This is minipage.


















Hey, this is sloppypar!


Paragraph[]markup{}commands

Later on\ldots

\cleardoublepage
\phantomsection
\addcontentsline{toc}{chapter}{Index}
\printindex

\end{document}
```

# OpenDetex #

```










First


Something

Begin of text. Bold, teletype, small caps etc.
Emphasis verb1 - or - verb2

Now label and reference and
another indexing . Also don't show
cites without, or with space.

Footnotes have to (be shown) also with (numbers
or
complex - content).

Now hyphenation and "various" "styles" "of" "quotes" 'more'.

Special characters: test/slash

This is minipage.

			This is figure.


This is table.

Hey, this is sloppypar!
Paragraph
markup
commands

Later on
```