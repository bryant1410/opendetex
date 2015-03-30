While working on TeX or LaTeX projects it's sometimes useful to get the document as plain text - for example, to apply a spellchecker on it. There are possibilities to use converters translating (La)TeX code to HTML or RTF, but they tend to produce text that is not very friendly for a spellchecker.

Detex is a well-known program stripping Tex/LaTeX commands from documents. Unfortunately, currently available version has some shortcomings and needs much improvement.

Because Detex is available on a free license ([NCSA license](http://www.opensource.org/licenses/NCSA)), it was possible to make a derivation of it. OpenDetex project is aimed at speeding up development of Detex, making use of Google Code project hosting and providing easier acces to program development.

# Features #
OpenDetex is able to handle multiple files included with `\include` or `\includeonly` commands, so you need only one command to convert the whole multi-file document.

Apart from "core" TeX/LaTeX commands, also some commands from most popular packages are handled properly.

Make sure to check [comparison of output between old Detex and new OpenDetex](DetexComparison.md).

# Usage #
See [Usage](Usage.md).

# Requirements #
There are no runtime dependencies for OpenDetex.

To build OpenDetex from sources, you only need a C compiler and popular `lex`/`flex` lexer (if you have build something from sources on your Linux distribution, you probably already have both). Build problems, which the original Detex version had, should be fixed.

Also Microsoft Windows executables are available.

# Contribution #
Linux and C hackers are welcome. Just ask.