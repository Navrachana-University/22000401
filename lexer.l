%{
#include "parser.tab.h"
#include <string.h>
#include <stdlib.h>
%}

%%

"સંખ્યા"           { return TK_INT; }
"ફલોટ"             { return TK_FLOAT; }
"દરશાવો"           { return TK_PRINT; }
"જ્યાં સુધી"        { return TK_WHILE; }
"કરો"               { return TK_DO; }



[0-9]+\.[0-9]+      { yylval.num = atof(yytext); return NUMBER; }
[0-9]+              { yylval.num = atoi(yytext); return NUMBER; }

[a-zA-Z_][a-zA-Z0-9_]* {
    yylval.str = strdup(yytext);
    return IDENTIFIER;
}

";"                 { return SEMICOLON; }
"="                 { return ASSIGN; }
"+"                 { return PLUS; }
"-"                 { return MINUS; }
"*"                 { return MUL; }
"/"                 { return DIV; }

[ \t\r\n]+          ; // Skip whitespace
.                   { printf("Unknown character: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
