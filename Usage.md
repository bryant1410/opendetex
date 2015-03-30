`detex project`

opens `project.tex`, reads all files included using `\include` or `\includeonly` commands, outputs resulting text to standard output.

`detex -n project > out.txt`

opens `project.tex`, does not follow `\include` or `\includeonly` commands, outputs resulting text to `out.txt`

`detex --help`

shows full help