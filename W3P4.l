%option noyywrap
%{
 #include<stdio.h>
%}
%%
[+-][0-9]+ {printf("%s is Signed Integer",yytext);}
[0-9]+ {printf("%s is UnSigned Integer",yytext);}
%%
void main()
{
 printf("Enter a Number\n");
 yylex();
}
 
