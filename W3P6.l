%option noyywrap
%{
 #include<stdio.h>
%}
%%
[+-]?[0-9]+[.][0-9]+ {printf("\n%s is Foating Point Number",yytext);}
[+-]?[0-9]+ {printf("%s is Integer",yytext);}
%%
void main()
{
 printf("Enter a Number\n");
 yylex();
}
 
