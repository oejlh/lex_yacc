%{
/*
 *   line numbering 1
 */

int lineno = 1;
%}

%%

\n { lineno++; ECHO; }
^.*$ printf("%d\t%s", lineno, yytext);

%%