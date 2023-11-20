%option noyywrap
%{
 #include<stdio.h>
%}
%%
[0-9]* {printf("\n%s is Integer",yytext);}
[a-zA-Z] {printf("\n%s is Character",yytext);}
[-+]?[0-9]*[.][0-9]+ {printf("\n%s is Float",yytext);}
[a-zA-Z]+ {printf("\n%s is Variable",yytext);}
%%
int main()
{
 printf("Enter\n");
 yylex();
 return 0;
}
