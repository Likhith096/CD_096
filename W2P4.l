%option noyywrap
%{
 #include<stdio.h>
%}
 int words = 0;
%%
[a-zA-Z0-9]* {words++;} {printf("The number of characters in %s is %d\n",yytext,yyleng);}
"\n" {printf("The number of words in the sentence is %d",words);}
%%
int main()
{
 printf("Enter\n");
 yylex();
 return 0;
}

