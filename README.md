[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/bPoO8GTw)
[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-2e0aaae1b6195c2367325f4f02e2d04e9abb55f0b24a779b69b11b9e10269abc.svg)](https://classroom.github.com/online_ide?assignment_repo_id=19525174&assignment_repo_type=AssignmentRepo)

I have made a Gujarati Compiler which basically handles print (દરશાવો), integer (સંખ્યા), float(ફલોટ) and string (સ્ટ્રિંગ).
I have two files lexer.l and parser.y
For running the code, make two files lexer.l and parser.y. The files are uploaded on github.
The code to run the following is as follows:
>>flex lexer.l
>>bison -d parser.y
>>gcc lex.yy.c parser.tab.c -o gujarati_compiler -lfl
>>gujarati_compiler < input.gj
