%option noyywrap
%{
 #include<stdio.h>
%}
%%
[a-zA-Z]* {printf("\n%s is stream of characters",yytext);}
[-+]?[0-9]* {printf("\n%s is a digit",yytext);}
%%
int main()
{
 printf("Enter\n");
 yylex();
 return 0;
}

